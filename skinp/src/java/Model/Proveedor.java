
package Model;


public class Proveedor {
    int IdProveedor;
    String Nombre;
    String NIT;
    String Direccion;
    String Correo;
    String Telefono;
    
    public Proveedor(){
        
    }

    public Proveedor( String Nombre, String NIT, String Direccion, String Correo, String Telefono) {
        this.Nombre = Nombre;
        this.NIT = NIT;
        this.Direccion = Direccion;
        this.Correo = Correo;
        this.Telefono = Telefono;
    }
    

    public int getIdProveedor() {
        return IdProveedor;
    }

    public void setIdProveedor(int IdProveedor) {
        this.IdProveedor = IdProveedor;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNIT() {
        return NIT;
    }

    public void setNIT(String NIT) {
        this.NIT = NIT;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }
    
}
