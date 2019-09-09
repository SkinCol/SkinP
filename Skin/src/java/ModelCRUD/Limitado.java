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
public class Limitado {
    private int IdLimitado;
    private String Nombre;
    private String Imagen;

    public Limitado() {
    }

    public Limitado(int IdLimitado, String Nombre, String Imagen) {
        this.IdLimitado = IdLimitado;
        this.Nombre = Nombre;
        this.Imagen = Imagen;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public int getIdLimitado() {
        return IdLimitado;
    }

    public void setIdLimitado(int IdLimitado) {
        this.IdLimitado = IdLimitado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
}
