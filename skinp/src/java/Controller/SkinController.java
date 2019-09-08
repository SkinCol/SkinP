/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Limitado;
import Model.Skin;
import ModeloDAO.SkinDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SkinController extends HttpServlet {
    
    String listar="WEB-INF/jsp/indexSkin.jsp";
    String add="WEB-INF/jsp/agregarSkin.jsp";
    String edit="WEB-INF/jsp/editarSkin.jsp";
    Skin sk=new Skin();
    SkinDAO dao= new SkinDAO();
    List<Limitado> lista = new ArrayList();
    int IdSkin;
    int IdLimitado;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("listar");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String Limitado=request.getParameter("Limitado");
            String Imagen=request.getParameter("Imagen");
            String ImagenUsuario=request.getParameter("ImagenUsuario");
            boolean Disponible=Boolean.getBoolean("Disponible");
            double CostoSkin=Double.parseDouble("CostoSkin");
            sk.setImagen(Imagen);
            sk.setImagenUsuario(ImagenUsuario);
            sk.setDisponible(Disponible);
            sk.setCostoSkin(CostoSkin);
            dao.add(sk);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("Id", request.getParameter("IdSkin"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){           
            IdLimitado=Integer.parseInt(request.getParameter("IdLimitado"));
            String Imagen=request.getParameter("Imagen");
            String ImagenUsuario=request.getParameter("ImagenUsuario");
            boolean Disponible=Boolean.getBoolean("Disponible");
            double CostoSkin=Double.parseDouble("CostoSkin");
            sk.setImagen(Imagen);
            sk.setImagenUsuario(ImagenUsuario);
            sk.setDisponible(Disponible);
            sk.setCostoSkin(CostoSkin);
            dao.edit(sk);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
                IdSkin=Integer.parseInt(request.getParameter("IdSkin"));
                sk.setIdSkin(IdSkin);
                dao.eliminar(IdSkin);
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

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
