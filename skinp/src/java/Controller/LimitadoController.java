/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author angel
 */
public class LimitadoController extends HttpServlet {
    
    String listar="WEB-INF/jsp/indexLimitado.jsp";
    String add="WEB-INF/jsp/agregarLimitado.jsp";
    String edit="WEB-INF/jsp/editarLimitado.jsp";
    Limitado li=new Limitado();
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
            out.println("<title>Servlet CategoriaController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CategoriaController at " + request.getContextPath() + "</h1>");
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
            li.setNombre(Nombre);
            li.setImagen(Imagen);
            dao.add(li);
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
            li.setIdLimitado(IdLimitado);
            li.setNombre(Nombre);
            li.setImagen(Imagen);
            dao.edit(li);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdLimitado=Integer.parseInt(request.getParameter("IdLimitado"));
                li.setIdLimitado(IdLimitado);
                dao.eliminar(IdLimitado);
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
