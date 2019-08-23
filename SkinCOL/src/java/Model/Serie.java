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
public class Serie {

    private int IdCategoria;
    private String Nombre;
    private String Imagen;

    public Serie() {
    }

    public Serie(int IdCategoria, String Nombre, String Imagen) {
        this.IdCategoria = IdCategoria;
        this.Nombre = Nombre;
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

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

}
