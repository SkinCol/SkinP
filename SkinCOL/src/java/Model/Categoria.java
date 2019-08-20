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
public class Categoria {
    private int IdCategoria;
    private String Nombre;
    private InputStream Imagen;

    public Categoria() {
    }

    public Categoria(int IdCategoria, String Nombre, InputStream Imagen) {
        this.IdCategoria = IdCategoria;
        this.Nombre = Nombre;
        this.Imagen = Imagen;
    }

    public InputStream getImagen() {
        return Imagen;
    }

    public void setImagen(InputStream Imagen) {
        this.Imagen = Imagen;
    }

    public int getIdCategoria() {
        return IdCategoria;
    }

    public void setIdCategoria(int IdCategoria) {
        this.IdCategoria = IdCategoria;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    
}
