/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import config.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.persistence.Lob;

/**
 *
 * @author angel
 */
public class Skin {
    private int IdSkin;
    private int IdLimitado;
    private Limitado Limitado;
    private String Nombre;
    private String Imagen;
    private String ImagenUsuario;
    private boolean Disponible;
    private double CostoSkin;

    public Skin() {
    }

    public Skin(int IdLimitado, Limitado Limitado, String Nombre, String Imagen, String ImagenUsuario, boolean Disponible, double CostoSkin) {
        this.IdLimitado = IdLimitado;
        this.Limitado = Limitado;
        this.Nombre = Nombre;
        this.Imagen = Imagen;
        this.ImagenUsuario = ImagenUsuario;
        this.Disponible = Disponible;
        this.CostoSkin = CostoSkin;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    ;

    public int getIdSkin() {
        return IdSkin;
    }

    public void setIdSkin(int IdSkin) {
        this.IdSkin = IdSkin;
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

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public String getImagenUsuario() {
        return ImagenUsuario;
    }

    public void setImagenUsuario(String ImagenUsuario) {
        this.ImagenUsuario = ImagenUsuario;
    }
    

    public boolean isDisponible() {
        return Disponible;
    }

    public void setDisponible(boolean Disponible) {
        this.Disponible = Disponible;
    }

    public double getCostoSkin() {
        return CostoSkin;
    }

    public void setCostoSkin(double CostoSkin) {
        this.CostoSkin = CostoSkin;
    }
    
    
       
}
