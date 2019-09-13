
package Controller;

import Model.Limitado;
import ModeloDAO.LimitadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LimitadoController extends HttpServlet {
      
    String listar="WEB-INF/jsp/indexLimitado.jsp";
    String add="WEB-INF/jsp/agregarLimitado.jsp";
    String edit="WEB-INF/jsp/editarLimitado.jsp";
    Limitado lim=new Limitado();
    LimitadoDAO dao= new LimitadoDAO();
    int IdLimitado;
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
            String Imagen=request.getParameter("Imagen");
            lim.setNombre(Nombre);
            lim.setImagen(Imagen);
            dao.add(lim);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdLimitado"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdLimitado=Integer.parseInt(request.getParameter("IdLimitado"));
            String Nombre=request.getParameter("Nombre");
            String Imagen=request.getParameter("Imagen");
            lim.setIdLimitado(IdLimitado);
            lim.setNombre(Nombre);
            lim.setImagen(Imagen);
            dao.edit(lim);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdLimitado=Integer.parseInt(request.getParameter("IdLimitado"));
                lim.setIdLimitado(IdLimitado);
                dao.eliminar(IdLimitado);
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
