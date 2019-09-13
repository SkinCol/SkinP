
package Controller;

import Model.Ciudad;
import Model.Departamento;
import ModeloDAO.CiudadDAO;
import ModeloDAO.DeptoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControllerCiudad extends HttpServlet {
    
    String listar="WEB-INF/jsp/indexCiudad.jsp";
    String add="WEB-INF/jsp/agregarCiudad.jsp";
    String edit="WEB-INF/jsp/editarCiudad.jsp";
    Ciudad ciu=new Ciudad();
    CiudadDAO dao= new CiudadDAO();
    DeptoDAO ddao = new DeptoDAO();
    List<Departamento> departamento = new ArrayList();
    int IdCiudad;
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        departamento = ddao.listar();
        
        switch (accion){
            case "1":
                request.setAttribute("Departamento", departamento);
                request.getRequestDispatcher("indexCiudad.jsp").forward(request, response);
                break;
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
            int IdDepartamento= Integer.parseInt(request.getParameter("IdDepartamento"));
            String Nombre=request.getParameter("Nombre");
            ciu.setIdDepartamento(IdDepartamento);
            ciu.setNombre(Nombre);
            dao.add(ciu);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdCiudad"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdCiudad=Integer.parseInt(request.getParameter("IdCiudad"));
            int IdDepartamento= Integer.parseInt(request.getParameter("IdDepartamento"));
            String Nombre=request.getParameter("Nombre");
            ciu.setIdDepartamento(IdDepartamento);
            ciu.setNombre(Nombre);
            dao.edit(ciu);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdCiudad=Integer.parseInt(request.getParameter("IdCiudad"));
                ciu.setIdCiudad(IdCiudad);
                dao.eliminar(IdCiudad);
                acceso=listar;
            }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
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
