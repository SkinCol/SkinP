
package Controller;

import Model.Material;
import ModeloDAO.MaterialDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MaterialController extends HttpServlet {
    String listar="WEB-INF/jsp/indexMaterial.jsp";
    String add="WEB-INF/jsp/agregarMaterial.jsp";
    String edit="WEB-INF/jsp/editarMaterial.jsp";
    Material ma=new Material();
    MaterialDAO dao= new MaterialDAO();
    int IdMaterial;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MaterialController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MaterialController at " + request.getContextPath() + "</h1>");
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
            String Descripcion=request.getParameter("Descripcion");
            ma.setNombre(Nombre);
            ma.setDescripcion(Descripcion);
            dao.add(ma);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdProveedor"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdMaterial=Integer.parseInt(request.getParameter("IdMaterial"));
            String Nombre=request.getParameter("Nombre");
            String Descripcion=request.getParameter("Descripcion");
            ma.setIdMaterial(IdMaterial);
            ma.setNombre(Nombre);
            ma.setDescripcion(Descripcion);
            dao.edit(ma);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdMaterial=Integer.parseInt(request.getParameter("IdMaterial"));
                ma.setIdMaterial(IdMaterial);
                dao.eliminar(IdMaterial);
                acceso=listar;
            }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
