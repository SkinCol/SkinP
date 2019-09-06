/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author alejandro
 */
public class Carrito {
    private int item;
    private int IdSkin;
    private String Nombre;
    private double PrecioCompra;
    private int cantidad;
    private double SubTotal;
    private String Imagen;

    public Carrito() {
    }

    public Carrito(int item, int IdSkin, String Nombre, double PrecioCompra, int cantidad, double SubTotal, String Imagen) {
        this.item = item;
        this.IdSkin = IdSkin;
        this.Nombre = Nombre;
        this.PrecioCompra = PrecioCompra;
        this.cantidad = cantidad;
        this.SubTotal = SubTotal;
        this.Imagen = Imagen;
    }
    

    public double getSubTotal() {
        return SubTotal;
    }

    public void setSubTotal(double SubTotal) {
        this.SubTotal = SubTotal;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdSkin() {
        return IdSkin;
    }

    public void setIdSkin(int IdSkin) {
        this.IdSkin = IdSkin;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public double getPrecioCompra() {
        return PrecioCompra;
    }

    public void setPrecioCompra(double PrecioCompra) {
        this.PrecioCompra = PrecioCompra;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }
    
}
