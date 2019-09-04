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
 * @author alejandro
 */
public class ControllerDispositivo extends HttpServlet {

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
    List<Dispositivo> iphone = new ArrayList();
    List<Dispositivo> samsung = new ArrayList();
    List<Dispositivo> google = new ArrayList();
    List<Dispositivo> htc = new ArrayList();
    List<Dispositivo> lg = new ArrayList();
    List<Dispositivo> motorola = new ArrayList();
    List<Dispositivo> sony = new ArrayList();
    List<Dispositivo> huawei = new ArrayList();
    List<Dispositivo> xiaomi = new ArrayList();
    List<Dispositivo> tablet = new ArrayList();
    List<Dispositivo> portatil = new ArrayList();
    List<Dispositivo> playstation = new ArrayList();
    List<Dispositivo> xbox = new ArrayList();
    List<Dispositivo> nitendo = new ArrayList();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        iphone = ddao.ListariPhone();
        samsung = ddao.ListarSamsung();
        google = ddao.ListarGoogle();
        htc = ddao.ListarHTC();
        lg = ddao.ListarLG();
        motorola = ddao.ListarMotorola();
        sony = ddao.ListarSony();
        huawei = ddao.ListarHuawei();
        xiaomi = ddao.ListarXiaomi();
        tablet = ddao.ListarTablets();
        portatil = ddao.ListarPortatiles();
        xbox = ddao.ListarXbox();
        nitendo = ddao.ListarNintendo();
        playstation = ddao.ListarPlayStation();

        switch (accion) {
            case "telefonos":
                request.setAttribute("iphone", iphone);
                request.setAttribute("samsung", samsung);
                request.setAttribute("google", google);
                request.setAttribute("htc", htc);
                request.setAttribute("lg", lg);
                request.setAttribute("motorola", motorola);
                request.setAttribute("sony", sony);
                request.setAttribute("huawei", huawei);
                request.setAttribute("xiaomi", xiaomi);
                request.getRequestDispatcher("Dispositivos/Telefonos.jsp").forward(request, response);
                break;
            case "tabletas":
                request.setAttribute("tablet", tablet);
                request.getRequestDispatcher("Dispositivos/Tabletas.jsp").forward(request, response);
                break;
            case "portatiles":
                request.setAttribute("portatil", portatil);
                request.getRequestDispatcher("Dispositivos/Portatiles.jsp").forward(request, response);
                break;
            case "consolas":
                request.setAttribute("xbox", xbox);
                request.setAttribute("nitendo", nitendo);
                request.setAttribute("playstation", playstation);
                request.getRequestDispatcher("Dispositivos/Consolas.jsp").forward(request, response);
                break;
            case "1":
                request.getRequestDispatcher("Skins/iPhone6Skins.jsp").forward(request, response);
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
