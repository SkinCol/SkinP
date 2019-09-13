
package Model;


public class Limitado {
    int IdLimitado;
    String Nombre;
    String Imagen;


    public Limitado() {
    }

    public Limitado(String Nombre, String Imagen) {
        this.Nombre = Nombre;
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

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }
   
   
}
