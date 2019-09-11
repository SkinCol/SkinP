/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Carrito;
import Model.Skin;
import Model.SkinsiPhone5DAO;
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
public class ControllerSkiniPhone5 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    SkinsiPhone5DAO Sip5DAO = new SkinsiPhone5DAO();
    Skin s = new Skin();

    List<Skin> carbon = new ArrayList();
    List<Skin> board = new ArrayList();
    List<Skin> color = new ArrayList();
    List<Skin> wood = new ArrayList();
    List<Skin> metal = new ArrayList();

    List<Carrito> listaCarrito = new ArrayList();
    int item;
    double totalPagar = 0.0;
    int cantidad = 1;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        carbon = Sip5DAO.CarbonSeriesiPhone5();
        board = Sip5DAO.BoardSeriesiPhone5();
        color = Sip5DAO.ColorSeriesiPhone5();
        wood = Sip5DAO.WoodSeriesiPhone5();
        metal = Sip5DAO.MetalSeriesiPhone5();

        switch (accion) {
            case "1":
                request.setAttribute("carbon", carbon);
                request.setAttribute("board", board);
                request.setAttribute("color", color);
                request.setAttribute("wood", wood);
                request.setAttribute("metal", metal);
                request.getRequestDispatcher("Skins/iPhone5Skins.jsp").forward(request, response);
                break;

            case "carbon":
                request.setAttribute("carbon", carbon);
                request.getRequestDispatcher("Skins/iPhone5/ColorSeriesiPhone5.jsp").forward(request, response);
                break;

            case "board":
                request.setAttribute("board", board);
                request.getRequestDispatcher("Skins/iPhone5/BoardSeriesiPhone5.jsp").forward(request, response);
                break;

            case "color":
                request.setAttribute("color", color);
                request.getRequestDispatcher("Skins/iPhone5/ColorSeriesiPhone5.jsp").forward(request, response);
                break;

            case "wood":
                request.setAttribute("wood", wood);
                request.getRequestDispatcher("Skins/iPhone5/WoodSeriesiPhone5.jsp").forward(request, response);
                break;

            case "metal":
                request.setAttribute("metal", metal);
                request.getRequestDispatcher("Skins/iPhone5/MetalSeriesiPhone5.jsp").forward(request, response);
                break;

            case "AgregarCarrito":
                int pos = 0;
                cantidad = 1;
                int idskin = Integer.parseInt(request.getParameter("Id"));
                s = Sip5DAO.listarId(idskin);
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
                request.getRequestDispatcher("ControllerSkiniPhone5?accion=1").forward(request, response);
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
