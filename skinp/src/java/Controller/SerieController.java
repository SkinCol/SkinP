
package Controller;

import Model.Serie;
import ModeloDAO.SerieDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SerieController extends HttpServlet {
    
    String listar="WEB-INF/jsp/indexSerie.jsp";
    String add="WEB-INF/jsp/agregarSerie.jsp";
    String edit="WEB-INF/jsp/editarSerie.jsp";
    Serie ser=new Serie();
    SerieDAO dao= new SerieDAO();
    int IdSerie;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SerieController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SerieController at " + request.getContextPath() + "</h1>");
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
            ser.setNombre(Nombre);
            dao.add(ser);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdSerie"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdSerie=Integer.parseInt(request.getParameter("IdSerie"));
            String Nombre=request.getParameter("Nombre");
            ser.setIdSerie(IdSerie);
            ser.setNombre(Nombre);
            dao.edit(ser);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdSerie=Integer.parseInt(request.getParameter("IdSerie"));
                ser.setIdSerie(IdSerie);
                dao.eliminar(IdSerie);
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
