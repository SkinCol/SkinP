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
public class Skin {
    private int IdSkin;
    private int IdSerie;
    private int IdLimitado;
    private int IdDispositivo;
    private String Nombre;
    private String Imagen;
    private int Stock;
    private double CostoSkin;

    public Skin() {
    }

    public Skin(int IdSkin, int IdSerie, int IdLimitado, int IdDispositivo, String Nombre, String Imagen, int Stock, double CostoSkin) {
        this.IdSkin = IdSkin;
        this.IdSerie = IdSerie;
        this.IdLimitado = IdLimitado;
        this.IdDispositivo = IdDispositivo;
        this.Nombre = Nombre;
        this.Imagen = Imagen;
        this.Stock = Stock;
        this.CostoSkin = CostoSkin;
    }

    public double getCostoSkin() {
        return CostoSkin;
    }

    public void setCostoSkin(double CostoSkin) {
        this.CostoSkin = CostoSkin;
    }

    public int getIdSkin() {
        return IdSkin;
    }

    public void setIdSkin(int IdSkin) {
        this.IdSkin = IdSkin;
    }

    public int getIdSerie() {
        return IdSerie;
    }

    public void setIdSerie(int IdSerie) {
        this.IdSerie = IdSerie;
    }

    public int getIdLimitado() {
        return IdLimitado;
    }

    public void setIdLimitado(int IdLimitado) {
        this.IdLimitado = IdLimitado;
    }

    public int getIdDispositivo() {
        return IdDispositivo;
    }

    public void setIdDispositivo(int IdDispositivo) {
        this.IdDispositivo = IdDispositivo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }
    
}
