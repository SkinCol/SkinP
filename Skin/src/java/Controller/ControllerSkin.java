/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Skin;
import Model.SkinDAO;
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
public class ControllerSkin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    SkinDAO sdao = new SkinDAO();
    List<Skin> carbon = new ArrayList();
    List<Skin> camo = new ArrayList();
    List<Skin> color = new ArrayList();
    List<Skin> wood = new ArrayList();
    List<Skin> metal = new ArrayList();
    List<Skin> leather = new ArrayList();
    List<Skin> glitz = new ArrayList();
    List<Skin> stone = new ArrayList();
    List<Skin> alcantara = new ArrayList();
    List<Skin> natural = new ArrayList();
    List<Skin> aniversario = new ArrayList();
    List<Skin> retro = new ArrayList();
    List<Skin> hemp = new ArrayList();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        carbon = sdao.ListarCarbonSeries();
        camo = sdao.ListarCamoSeries();
        color = sdao.ListarColorSeries();
        wood = sdao.ListarWoodSeries();
        metal = sdao.ListarMetalSeries();
        leather = sdao.ListarLeatherSeries();
        glitz = sdao.ListarGlitzSeries();
        stone = sdao.ListarStoneSeries();
        alcantara = sdao.ListarAlcantaraSeries();
        natural = sdao.ListarNaturalSeries();
        aniversario = sdao.ListarAniversarioSeries();
        retro = sdao.ListarRetroSeries();
        hemp = sdao.ListarHempSeries();

        switch (accion) {
            case "1":
                request.setAttribute("carbon", carbon);
                request.setAttribute("camo", camo);
                request.setAttribute("color", color);
                request.setAttribute("wood", wood);
                request.setAttribute("metal", metal);
                request.setAttribute("leather", leather);
                request.setAttribute("glitz", glitz);
                request.setAttribute("stone", stone);
                request.setAttribute("alcantara", alcantara);
                request.setAttribute("natural", natural);
                request.setAttribute("aniversario", aniversario);
                request.setAttribute("retro", retro);
                request.setAttribute("hemp", hemp);
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
