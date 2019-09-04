/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Dispositivo;
import Model.DispositivoDAO;
import Model.Limitado;
import Model.LimitadoDAO;
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
 * @author aleja
 */
public class ControllerLimitado extends HttpServlet {

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
    LimitadoDAO ldao = new LimitadoDAO();
    List<Limitado> limitado = new ArrayList();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        String enlace = request.getParameter("enlace");
        limitado = ldao.ListarLimitados();
        phone = ddao.ListarPhones();

        switch (accion) {
            case "1":
                request.setAttribute("limitado", limitado);
                request.getRequestDispatcher("Limitados.jsp").forward(request, response);
                break;
            default:
                break;
        }
        switch (enlace) {
            case "1":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/VenomSeries.jsp").forward(request, response);
                break;
            case "2":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Trasparente.jsp").forward(request, response);
                break;
            case "3":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Alcantara.jsp").forward(request, response);
                break;
            case "4":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Hemp.jsp").forward(request, response);
                break;
            case "5":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Mosaico.jsp").forward(request, response);
                break;
            case "6":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Stale.jsp").forward(request, response);
                break;
            case "7":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Charred.jsp").forward(request, response);
                break;
            case "8":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/WovenMetal.jsp").forward(request, response);
                break;
            case "9":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Matrix.jsp").forward(request, response);
                break;
            case "10":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/ColorShifting.jsp").forward(request, response);
                break;
            case "11":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Sloth.jsp").forward(request, response);
                break;
            case "12":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Shade.jsp").forward(request, response);
                break;
            case "13":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/HoneyComb.jsp").forward(request, response);
                break;
            case "14":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Aniversario.jsp").forward(request, response);
                break;
            case "15":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Retro.jsp").forward(request, response);
                break;
            case "16":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/RetroBlack.jsp").forward(request, response);
                break;
            case "17":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/DarkMatter.jsp").forward(request, response);
                break;
            case "18":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/PrideCork.jsp").forward(request, response);
                break;
            case "19":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Marbol.jsp").forward(request, response);
                break;
            case "20":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/StickerBomb.jsp").forward(request, response);
                break;
            case "21":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Moon.jsp").forward(request, response);
                break;
            case "22":
                request.setAttribute("limitado", limitado);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Limitado/Forged.jsp").forward(request, response);
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
