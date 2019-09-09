/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerCRUD;

import Model.Skin;
import ModelCRUD.SkinDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandro
 */
public class SkinController extends HttpServlet {

    String listar = "WEB-INF/jsp/indexSkin.jsp";
    String add = "WEB-INF/jsp/agregarSkin.jsp";
    String edit = "WEB-INF/jsp/editarSkin.jsp";
    Skin s = new Skin();
    SkinDAO sdao = new SkinDAO();
    int IdSkin;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SkinController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SkinController at " + request.getContextPath() + "</h1>");
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
        String acceso = "";
        String action = request.getParameter("listar");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            int IdSerie = Integer.parseInt(request.getParameter("IdProveedor"));
            int IdLimitado = Integer.parseInt(request.getParameter("IdLimitado"));
            int IdDispositivo = Integer.parseInt(request.getParameter("IdDispositivo"));
            String Nombre = request.getParameter("Nombre");            
            String Imagen = request.getParameter("Imagen");
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            double CostoSkin = Double.parseDouble("CostoSkin");
            s.setIdSerie(IdSerie);
            s.setIdLimitado(IdLimitado);
            s.setIdDispositivo(IdDispositivo);
            s.setNombre(Nombre);
            s.setImagen(Imagen);
            s.setStock(Stock);
            s.setCostoSkin(CostoSkin);
            sdao.Add(s);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("Id", request.getParameter("IdSkin"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int IdSerie = Integer.parseInt(request.getParameter("IdProveedor"));
            int IdLimitado = Integer.parseInt(request.getParameter("IdLimitado"));
            int IdDispositivo = Integer.parseInt(request.getParameter("IdDispositivo"));
            String Nombre = request.getParameter("Nombre");            
            String Imagen = request.getParameter("Imagen");
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            double CostoSkin = Double.parseDouble("CostoSkin");
            s.setIdSerie(IdSerie);
            s.setIdLimitado(IdLimitado);
            s.setIdDispositivo(IdDispositivo);
            s.setNombre(Nombre);
            s.setImagen(Imagen);
            s.setStock(Stock);
            s.setCostoSkin(CostoSkin);
            sdao.Edit(s);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            IdSkin = Integer.parseInt(request.getParameter("IdSkin"));
            s.setIdSkin(IdSkin);
            sdao.Delete(IdSkin);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
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
