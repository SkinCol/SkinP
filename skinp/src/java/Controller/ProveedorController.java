
package Controller;

import Model.Proveedor;
import ModeloDAO.ProveedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ProveedorController extends HttpServlet {
      
    String listar="WEB-INF/jsp/indexProveedor.jsp";
    String add="WEB-INF/jsp/agregarProveedor.jsp";
    String edit="WEB-INF/jsp/editarProveedor.jsp";
    Proveedor prov=new Proveedor();
    ProveedorDAO dao= new ProveedorDAO();
    int IdProveedor;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProveedorController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProveedorController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String Nombre=request.getParameter("Nombre");
            String NIT=request.getParameter("NIT");
            String Direccion=request.getParameter("Direccion");
            String Correo=request.getParameter("Correo");
            String Telefono=request.getParameter("Telefono");
            prov.setNombre(Nombre);
            prov.setNIT(NIT);
            prov.setDireccion(Direccion);
            prov.setCorreo(Correo);
            prov.setTelefono(Telefono);
            dao.add(prov);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdProveedor"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdProveedor=Integer.parseInt(request.getParameter("IdProveedor"));
            String Nombre=request.getParameter("Nombre");
            String NIT=request.getParameter("NIT");
            String Direccion=request.getParameter("Direccion");
            String Correo=request.getParameter("Correo");
            String Telefono=request.getParameter("Telefono");
            prov.setIdProveedor(IdProveedor);
            prov.setNombre(Nombre);
            prov.setNIT(NIT);
            prov.setDireccion(Direccion);
            prov.setCorreo(Correo);
            prov.setTelefono(Telefono);
            dao.edit(prov);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdProveedor=Integer.parseInt(request.getParameter("IdProveedor"));
                prov.setIdProveedor(IdProveedor);
                dao.eliminar(IdProveedor);
                acceso=listar;
            }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
