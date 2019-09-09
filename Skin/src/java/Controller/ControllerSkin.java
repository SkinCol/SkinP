/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Carrito;

import Model.Skin;
import Model.SkinsiPhone5DAO;
import Model.SkinsiPhone5sDAO;
import Model.SkinsiPhone6DAO;
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
    SkinsiPhone6DAO Sip6DAO = new SkinsiPhone6DAO();
    SkinsiPhone5DAO Sip5DAO = new SkinsiPhone5DAO();
    SkinsiPhone5sDAO Sip5sDAO = new SkinsiPhone5sDAO();
    Skin s = new Skin();

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

    List<Skin> carbon2 = new ArrayList();
    List<Skin> board2 = new ArrayList();
    List<Skin> color2 = new ArrayList();
    List<Skin> wood2 = new ArrayList();
    List<Skin> metal2 = new ArrayList();
    
     List<Skin> carbon3 = new ArrayList();
    List<Skin> color3 = new ArrayList();
    List<Skin> wood3 = new ArrayList();
    List<Skin> metal3 = new ArrayList();
    List<Skin> leather3 = new ArrayList();
    List<Skin> glitz3 = new ArrayList();
    List<Skin> stone3 = new ArrayList();
    List<Skin> alcantara3 = new ArrayList();
    List<Skin> natural3 = new ArrayList();
    List<Skin> hemp3 = new ArrayList();

    List<Carrito> listaCarrito = new ArrayList();
    int item;
    double totalPagar = 0.0;
    int cantidad = 1;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        carbon = Sip6DAO.CarbonSeriesiPhone6();
        camo = Sip6DAO.CamoSeriesiPhone6();
        color = Sip6DAO.ColorSeriesiPhone6();
        wood = Sip6DAO.WoodSeriesiPhone6();
        metal = Sip6DAO.MetalSeriesiPhone6();
        leather = Sip6DAO.LeatherSeriesiPhone6();
        glitz = Sip6DAO.GlitzSeriesiPhone6();
        stone = Sip6DAO.StoneSeriesiPhone6();
        alcantara = Sip6DAO.AlcantaraSeriesiPhone6();
        natural = Sip6DAO.NaturalSeriesiPhone6();
        aniversario = Sip6DAO.EdicionAniversarioiPhone6();
        retro = Sip6DAO.RetroAppleiPhone6();
        hemp = Sip6DAO.HempSeriesiPhone6();

        carbon2 = Sip5DAO.CarbonSeriesiPhone5();
        board2 = Sip5DAO.BoardSeriesiPhone5();
        color2 = Sip5DAO.ColorSeriesiPhone5();
        wood2 = Sip5DAO.WoodSeriesiPhone5();
        metal2 = Sip5DAO.MetalSeriesiPhone5();

        carbon3 = Sip5sDAO.CarbonSeriesiPhone5s();
        color3 = Sip5sDAO.ColorSeriesiPhone5s();
        wood3 = Sip5sDAO.WoodSeriesiPhone5s();
        metal3 = Sip5sDAO.MetalSeriesiPhone5s();
        leather3 = Sip5sDAO.LeatherSeriesiPhone5s();
        glitz3 = Sip5sDAO.GlitzSeriesiPhone5s();
        stone3 = Sip5sDAO.StoneSeriesiPhone5s();
        alcantara3 = Sip5sDAO.AlcantaraSeriesiPhone5s();
        natural3 = Sip5sDAO.NaturalSeriesiPhone5s();
        hemp3 = Sip5sDAO.HempSeriesiPhone5s();

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

            case "2":
                request.setAttribute("carbon2", carbon2);
                request.setAttribute("color2", color2);
                request.setAttribute("wood2", wood2);
                request.setAttribute("metal2", metal2);
                request.setAttribute("board2", board2);
                request.getRequestDispatcher("Skins/iPhone5sSkins.jsp").forward(request, response);
                break;

            case "3":
                request.setAttribute("carbon", carbon);
                request.setAttribute("color", color);
                request.setAttribute("wood", wood);
                request.setAttribute("metal", metal);
                request.setAttribute("leather", leather);
                request.setAttribute("glitz", glitz);
                request.setAttribute("stone", stone);
                request.setAttribute("alcantara", alcantara);
                request.setAttribute("natural", natural);
                request.setAttribute("hemp", hemp);
                request.getRequestDispatcher("Skins/iPhone5Skins.jsp").forward(request, response);
                break;

            case "color":
                request.setAttribute("color2", color2);
                request.setAttribute("color", color);
                request.getRequestDispatcher("Skins/iPhone6/ColorSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/ColorSeriesiPhone5.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/ColorSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "carbon":
                request.setAttribute("carbon2", carbon2);
                request.setAttribute("carbon", carbon);
                request.getRequestDispatcher("Skins/iPhone6/CarbonSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/CarbonSeriesiPhone5.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/CarbonSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "wood":
                request.setAttribute("wood", wood);
                request.getRequestDispatcher("Skins/iPhone6/WoodSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/WoodSeriesiPhone5.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/WoodSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "metal":
                request.setAttribute("metal", metal);
                request.getRequestDispatcher("Skins/iPhone6/MetalSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/MetalSeriesiPhone5.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/MetalSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "board":
                request.setAttribute("board", board2);
                request.getRequestDispatcher("Skins/iPhone6/BoardSeriesiPhone5.jsp").forward(request, response);
                break;

            case "camo":
                request.setAttribute("camo", camo);
                request.getRequestDispatcher("Skins/iPhone6/CamoSeriesiPhone6.jsp").forward(request, response);
                break;

            case "leather":
                request.setAttribute("leather", leather);
                request.getRequestDispatcher("Skins/iPhone6/LeatherSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/LeatherSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "glitz":
                request.setAttribute("glitz", glitz);
                request.getRequestDispatcher("Skins/iPhone6/GlitzSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/GlitzSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "stone":
                request.setAttribute("stone", stone);
                request.getRequestDispatcher("Skins/iPhone6/StoneSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/StoneSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "alcantara":
                request.setAttribute("alcantara", alcantara);
                request.getRequestDispatcher("Skins/iPhone6/AlcantaraSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/AlcantaraSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "natural":
                request.setAttribute("natural", natural);
                request.getRequestDispatcher("Skins/iPhone6/NaturalSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/NaturalSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "aniversario":
                request.setAttribute("aniversario", aniversario);
                request.getRequestDispatcher("Skins/iPhone6/EdicionAniversarioiPhone6.jsp").forward(request, response);
                break;

            case "retro":
                request.setAttribute("retro", retro);
                request.getRequestDispatcher("Skins/iPhone6/AppleRetroiPhone6.jsp").forward(request, response);
                break;

            case "hemp":
                request.setAttribute("hemp", hemp);
                request.getRequestDispatcher("Skins/iPhone6/HempSeriesiPhone6.jsp").forward(request, response);
                request.getRequestDispatcher("Skins/iPhone6/HempSeriesiPhone5s.jsp").forward(request, response);
                break;

            case "AgregarCarrito":
                int pos = 0;
                cantidad = 1;
                int idskin = Integer.parseInt(request.getParameter("Id"));
                s = Sip6DAO.listarId(idskin);
                if (listaCarrito.size() > 0) {
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        if (idskin == listaCarrito.get(i).getIdSkin()) {
                            pos = i;
                        }
                    }
                    if (idskin == listaCarrito.get(pos).getIdSkin()) {
                        cantidad = listaCarrito.get(pos).getCantidad() + cantidad;
                        double subtotal = listaCarrito.get(pos).getPrecioCompra() * cantidad;
                        listaCarrito.get(pos).setCantidad(cantidad);
                        listaCarrito.get(pos).setSubTotal(subtotal);
                    } else {
                        item = item + 1;
                        Carrito cart = new Carrito();
                        cart.setItem(item);
                        cart.setIdSkin(s.getIdSkin());
                        cart.setNombre(s.getNombre());
                        cart.setPrecioCompra(s.getCostoSkin());
                        cart.setCantidad(cantidad);
                        cart.setSubTotal(cantidad * s.getCostoSkin());
                        cart.setImagen(s.getImagen());

                        listaCarrito.add(cart);
                    }
                } else {
                    item = item + 1;
                    Carrito cart = new Carrito();
                    cart.setItem(item);
                    cart.setIdSkin(s.getIdSkin());
                    cart.setNombre(s.getNombre());
                    cart.setPrecioCompra(s.getCostoSkin());
                    cart.setCantidad(cantidad);
                    cart.setSubTotal(cantidad * s.getCostoSkin());
                    cart.setImagen(s.getImagen());

                    listaCarrito.add(cart);
                }

                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("ControllerSkin?accion=carbon").forward(request, response);
                break;

            case "Delete":
                int Id = Integer.parseInt(request.getParameter("IdSkin"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getIdSkin() == Id) {
                        listaCarrito.remove(i);
                    }
                }
                break;

            case "Carrito":
                totalPagar = 0.0;
                request.setAttribute("carrito", listaCarrito);
                for (int i = 0; i < listaCarrito.size(); i++) {
                    totalPagar = totalPagar + listaCarrito.get(i).getSubTotal();
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("Checkout/Cart.jsp").forward(request, response);
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
