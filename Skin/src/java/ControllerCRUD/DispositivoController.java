/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerCRUD;

import Model.Dispositivo;
import ModelCRUD.DispositivoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandro
 */
public class DispositivoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar = "WEB-INF/jsp/indexDispositivo.jsp";
    String add = "WEB-INF/jsp/agregarDispositivo.jsp";
    String edit = "WEB-INF/jsp/editarDispositivo.jsp";
    Dispositivo dis = new Dispositivo();
    DispositivoDAO dao = new DispositivoDAO();
    int IdDispositivo;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DispositivoController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DispositivoController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            String Modelo=request.getParameter("Modelo");
            String Marca=request.getParameter("Marca");
            String Tipo=request.getParameter("Tipo");
            String Imagen=request.getParameter("Imagen");
            dis.setModelo(Modelo);
            dis.setMarca(Marca);
            dis.setTipo(Tipo);
            dis.setImagen(Imagen);
            dao.Add(dis);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdDispositivo"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdDispositivo=Integer.parseInt(request.getParameter("IdDispositivo"));
            String Modelo=request.getParameter("Modelo");
            String Marca=request.getParameter("Marca");
            String Tipo=request.getParameter("Tipo");
            String Imagen=request.getParameter("Imagen");
            dis.setModelo(Modelo);
            dis.setMarca(Marca);
            dis.setTipo(Tipo);
            dis.setImagen(Imagen);
            dao.Edit(dis);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdDispositivo=Integer.parseInt(request.getParameter("IdDispositivo"));
                dis.setIdDispositivo(IdDispositivo);
                dao.Delete(IdDispositivo);
                acceso=listar;
            }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
