/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

/**
 *
 * @author alejandro
 */
public class Skin {
    private int IdSkin;
    private int IdSerie;
    private Serie Serie;
    private int IdLimitado;
    private Limitado Limitado;
    private int IdDispositivo;
    private Dispositivo Dispositivo;
    private String Nombre;
    private String Imagen;
    private int Stock;
    private double CostoSkin;

    public Skin() {
    }

    public Skin(int IdSkin, int IdSerie, Serie Serie, int IdLimitado, Limitado Limitado, int IdDispositivo, Dispositivo Dispositivo, String Nombre, String Imagen, int Stock, double CostoSkin) {
        this.IdSkin = IdSkin;
        this.IdSerie = IdSerie;
        this.Serie = Serie;
        this.IdLimitado = IdLimitado;
        this.Limitado = Limitado;
        this.IdDispositivo = IdDispositivo;
        this.Dispositivo = Dispositivo;
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

    public Serie getSerie() {
        return Serie;
    }

    public void setSerie(Serie Serie) {
        this.Serie = Serie;
    }

    public int getIdLimitado() {
        return IdLimitado;
    }

    public void setIdLimitado(int IdLimitado) {
        this.IdLimitado = IdLimitado;
    }

    public Limitado getLimitado() {
        return Limitado;
    }

    public void setLimitado(Limitado Limitado) {
        this.Limitado = Limitado;
    }

    public int getIdDispositivo() {
        return IdDispositivo;
    }

    public void setIdDispositivo(int IdDispositivo) {
        this.IdDispositivo = IdDispositivo;
    }

    public Dispositivo getDispositivo() {
        return Dispositivo;
    }

    public void setDispositivo(Dispositivo Dispositivo) {
        this.Dispositivo = Dispositivo;
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
