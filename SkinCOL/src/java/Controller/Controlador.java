/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Dispositivo;
import Model.DispositivoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alejandro
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
        DispositivoDAO ddao = new DispositivoDAO();
    List<Dispositivo> phone = new ArrayList();
    List<Dispositivo> tablet = new ArrayList();
    List<Dispositivo> portatil = new ArrayList();
    List<Dispositivo> otro = new ArrayList();
    List<Dispositivo> consola = new ArrayList();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        phone = ddao.ListarTelefonos();
        tablet = ddao.ListarTablets();
        portatil = ddao.ListarPortatiles();
        consola = ddao.ListarConsolas();

        switch (accion) {
            case "1":
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Telefonos.jsp").forward(request, response);
                break;
                
            case "2":
                request.setAttribute("tablet", tablet);
                request.getRequestDispatcher("Tabletas.jsp").forward(request, response);
                break;
                
            case "3":
                request.setAttribute("portatil", portatil);
                request.getRequestDispatcher("Portatiles.jsp").forward(request, response);
                break;
                
            case "4":
                request.setAttribute("consola", consola);
                request.getRequestDispatcher("Consolas.jsp").forward(request, response);
                break;
                
            default:
                break;
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
        processRequest(request, response);
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
