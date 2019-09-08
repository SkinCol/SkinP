
package Controller;

import Model.FacInsumos;
import ModeloDAO.FacInsumosDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FacInsumosController extends HttpServlet {
    
    String listar="WEB-INF/jsp/indexFacInsumos.jsp";
    String add="WEB-INF/jsp/agregarFacInsumos.jsp";
    String edit="WEB-INF/jsp/editarFacInsumos.jsp";
    FacInsumos fis=new FacInsumos();
    FacInsumosDAO dao= new FacInsumosDAO();
    int IdFacturaInsumos;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
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
            int IdProveedor=Integer.parseInt(request.getParameter("IdProveedor"));
            int IdMaterial=Integer.parseInt(request.getParameter("IdMaterial"));
            int Cantidad=Integer.parseInt(request.getParameter("Cantidad"));
            double Costo=Integer.parseInt(request.getParameter("Costo"));
            fis.setIdProveedor(IdProveedor);
            fis.setIdMaterial(IdMaterial);
            fis.setCantidad(Cantidad);
            fis.setCosto(Costo);
            dao.add(fis);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdFacturaInsumos"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdFacturaInsumos=Integer.parseInt(request.getParameter("IdFacturaInsumos"));
            int IdProveedor=Integer.parseInt(request.getParameter("IdProveedor"));
            int IdMaterial=Integer.parseInt(request.getParameter("IdMaterial"));
            int Cantidad=Integer.parseInt(request.getParameter("Cantidad"));
            double Costo=Integer.parseInt(request.getParameter("Costo"));
            fis.setIdFacturaInsumos(IdFacturaInsumos);
            fis.setIdProveedor(IdProveedor);
            fis.setIdMaterial(IdMaterial);
            fis.setCantidad(Cantidad);
            fis.setCosto(Costo);
            dao.edit(fis);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdFacturaInsumos=Integer.parseInt(request.getParameter("IdFacturaInsumos"));
                fis.setIdFacturaInsumos(IdFacturaInsumos);
                dao.eliminar(IdFacturaInsumos);
                acceso=listar;
            }
        RequestDispatcher vista= request.getRequestDispatcher(acceso);
        vista.forward(request, response);    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
