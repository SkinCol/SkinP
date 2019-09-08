
package Controller;

import Model.Departamento;
import ModeloDAO.DeptoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeptoController extends HttpServlet {

    String listar="WEB-INF/jsp/indexDepartamento.jsp";
    String add="WEB-INF/jsp/agregarDepartamento.jsp";
    String edit="WEB-INF/jsp/editarDepartamento.jsp";
    Departamento de=new Departamento();
    DeptoDAO dao= new DeptoDAO();
    int IdDepartamento;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeptoController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeptoController at " + request.getContextPath() + "</h1>");
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
            de.setNombre(Nombre);
            dao.add(de);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdDepartamento"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdDepartamento=Integer.parseInt(request.getParameter("IdDepartamento"));
            String Nombre=request.getParameter("Nombre");
            de.setIdDepartamento(IdDepartamento);
            de.setNombre(Nombre);
            dao.edit(de);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdDepartamento=Integer.parseInt(request.getParameter("IdDepartamento"));
                de.setIdDepartamento(IdDepartamento);
                dao.eliminar(IdDepartamento);
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
