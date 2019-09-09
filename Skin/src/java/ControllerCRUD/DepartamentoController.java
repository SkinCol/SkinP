/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerCRUD;

import ModelCRUD.Departamento;
import ModelCRUD.DepartamentoDAO;
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
public class DepartamentoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar = "WEB-INF/jsp/indexDepartamento.jsp";
    String add = "WEB-INF/jsp/agregarDepartamento.jsp";
    String edit = "WEB-INF/jsp/editarDepartamento.jsp";
    Departamento de = new Departamento();
    DepartamentoDAO ddao = new DepartamentoDAO();
    int IdDepartamento;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DepartamentoController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DepartamentoController at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            String Nombre = request.getParameter("Nombre");
            de.setNombre(Nombre);
            ddao.Add(de);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("Id", request.getParameter("IdDepartamento"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {            
            IdDepartamento = Integer.parseInt(request.getParameter("IdDepartamento"));
            String Nombre = request.getParameter("Nombre");
            de.setIdDepartamento(IdDepartamento);
            de.setNombre(Nombre);
            ddao.Edit(de);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            IdDepartamento = Integer.parseInt(request.getParameter("IdDepartamento"));
            de.setIdDepartamento(IdDepartamento);
            ddao.Delete(IdDepartamento);
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
