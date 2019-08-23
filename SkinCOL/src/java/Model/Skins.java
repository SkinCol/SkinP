/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.InputStream;

/**
 *
 * @author alejandro
 */
public class Skins {
    private int IdSkin;
    private int IdCategoria;
    private InputStream Imagen;
    private int Disponible;

    public Skins() {
    }

    public Skins(int IdSkin, int IdCategoria, InputStream Imagen, int Disponible) {
        this.IdSkin = IdSkin;
        this.IdCategoria = IdCategoria;
        this.Imagen = Imagen;
        this.Disponible = Disponible;
    }

    public int getDisponible() {
        return Disponible;
    }

    public void setDisponible(int Disponible) {
        this.Disponible = Disponible;
    }

    public int getIdSkin() {
        return IdSkin;
    }

    public void setIdSkin(int IdSkin) {
        this.IdSkin = IdSkin;
    }

    public int getIdCategoria() {
        return IdCategoria;
    }

    public void setIdCategoria(int IdCategoria) {
        this.IdCategoria = IdCategoria;
    }

    public InputStream getImagen() {
        return Imagen;
    }

    public void setImagen(InputStream Imagen) {
        this.Imagen = Imagen;
    }
    
    
}
