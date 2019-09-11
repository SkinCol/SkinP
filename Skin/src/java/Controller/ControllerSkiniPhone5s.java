/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Carrito;
import Model.Skin;
import Model.SkinsiPhone5sDAO;
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
public class ControllerSkiniPhone5s extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    SkinsiPhone5sDAO Sip5sDAO = new SkinsiPhone5sDAO();
    Skin s = new Skin();

    List<Skin> carbon = new ArrayList();
    List<Skin> color = new ArrayList();
    List<Skin> wood = new ArrayList();
    List<Skin> metal = new ArrayList();
    List<Skin> leather = new ArrayList();
    List<Skin> glitz = new ArrayList();
    List<Skin> stone = new ArrayList();
    List<Skin> alcantara = new ArrayList();
    List<Skin> natural = new ArrayList();
    List<Skin> hemp = new ArrayList();

    List<Carrito> listaCarrito = new ArrayList();
    int item;
    double totalPagar = 0.0;
    int cantidad = 1;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        carbon = Sip5sDAO.CarbonSeriesiPhone5s();
        color = Sip5sDAO.ColorSeriesiPhone5s();
        wood = Sip5sDAO.WoodSeriesiPhone5s();
        metal = Sip5sDAO.MetalSeriesiPhone5s();
        leather = Sip5sDAO.LeatherSeriesiPhone5s();
        glitz = Sip5sDAO.GlitzSeriesiPhone5s();
        stone = Sip5sDAO.StoneSeriesiPhone5s();
        alcantara = Sip5sDAO.AlcantaraSeriesiPhone5s();
        natural = Sip5sDAO.NaturalSeriesiPhone5s();
        hemp = Sip5sDAO.HempSeriesiPhone5s();

        switch (accion) {
            case "1":
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

            case "carbon":
                request.setAttribute("carbon", carbon);
                request.getRequestDispatcher("Skins/iPhone6/CarbonSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "color":
                request.setAttribute("color", color);
                request.getRequestDispatcher("Skins/iPhone6/ColorSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "wood":
                request.setAttribute("wood", wood);
                request.getRequestDispatcher("Skins/iPhone6/WoodSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "metal":
                request.setAttribute("metal", metal);
                request.getRequestDispatcher("Skins/iPhone6/MetalSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "leather":
                request.setAttribute("leather", leather);
                request.getRequestDispatcher("Skins/iPhone6/LeatherSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "glitz":
                request.setAttribute("glitz", glitz);
                request.getRequestDispatcher("Skins/iPhone6/GlitzSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "stone":
                request.setAttribute("stone", stone);
                request.getRequestDispatcher("Skins/iPhone6/StoneSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "alcantara":
                request.setAttribute("alcantara", alcantara);
                request.getRequestDispatcher("Skins/iPhone6/AlcantaraSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "natural":
                request.setAttribute("natural", natural);
                request.getRequestDispatcher("Skins/iPhone6/NaturalSeriesiPhone5s.jsp").forward(request, response);
                break;
                
            case "hemp":
                request.setAttribute("hemp", hemp);
                request.getRequestDispatcher("Skins/iPhone6/HempSeriesiPhone5s.jsp").forward(request, response);
                break;
                
                case "AgregarCarrito":
                int pos = 0;
                cantidad = 1;
                int idskin = Integer.parseInt(request.getParameter("Id"));
                s = Sip5sDAO.listarId(idskin);
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
                request.getRequestDispatcher("ControllerSkiniPhone5s?accion=1").forward(request, response);
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
