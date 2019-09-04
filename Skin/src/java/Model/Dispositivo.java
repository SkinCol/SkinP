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
public class Dispositivo {
    private int IdDispositivo;
    private String Marca;
    private String Modelo;
    private String Tipo;
    private String Imagen;
    private String Enlace;

    public Dispositivo() {
    }

    public Dispositivo(int IdDispositivo, String Marca, String Modelo, String Tipo, String Imagen, String Enlace) {
        this.IdDispositivo = IdDispositivo;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.Tipo = Tipo;
        this.Imagen = Imagen;
        this.Enlace = Enlace;
    } 

    public int getIdDispositivo() {
        return IdDispositivo;
    }

    public void setIdDispositivo(int IdDispositivo) {
        this.IdDispositivo = IdDispositivo;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getModelo() {
        return Modelo;
    }

    public void setModelo(String Modelo) {
        this.Modelo = Modelo;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public String getEnlace() {
        return Enlace;
    }

    public void setEnlace(String Enlace) {
        this.Enlace = Enlace;
    }
    
}
