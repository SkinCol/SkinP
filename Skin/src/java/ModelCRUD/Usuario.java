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
public class Usuario {
    private int IdUser;
    private int IdCiudad;
    private Ciudad Ciudad;
    private int Nivel;
    private String Nombres;
    private String Apellidos;
    private String Documento;
    private String Telefono;
    private String Direccion;
    private String Email;
    private String Contrasena;
    private boolean Estado;

    public Usuario() {
    }

    public Usuario(int IdUser, int IdCiudad, Ciudad Ciudad, int Nivel, String Nombres, String Apellidos, String Documento, String Telefono, String Direccion, String Email, String Contrasena, boolean Estado) {
        this.IdUser = IdUser;
        this.IdCiudad = IdCiudad;
        this.Ciudad = Ciudad;
        this.Nivel = Nivel;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Documento = Documento;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Email = Email;
        this.Contrasena = Contrasena;
        this.Estado = Estado;
    }

    public boolean isEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }

    public int getIdUser() {
        return IdUser;
    }

    public void setIdUser(int IdUser) {
        this.IdUser = IdUser;
    }

    public int getIdCiudad() {
        return IdCiudad;
    }

    public void setIdCiudad(int IdCiudad) {
        this.IdCiudad = IdCiudad;
    }

    public Ciudad getCiudad() {
        return Ciudad;
    }

    public void setCiudad(Ciudad Ciudad) {
        this.Ciudad = Ciudad;
    }

    public int getNivel() {
        return Nivel;
    }

    public void setNivel(int Nivel) {
        this.Nivel = Nivel;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }
    
}
