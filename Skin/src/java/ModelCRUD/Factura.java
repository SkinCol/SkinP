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
public class Factura {
    private int IdFactura;
    private int IdSolicitud;
    private Solicitud Solicitud;
    private int IdUser;
    private Usuario Cliente;
    private String Fecha;

    public Factura() {
    }

    public Factura(int IdFactura, int IdSolicitud, Solicitud Solicitud, int IdUser, Usuario Cliente, String Fecha) {
        this.IdFactura = IdFactura;
        this.IdSolicitud = IdSolicitud;
        this.Solicitud = Solicitud;
        this.IdUser = IdUser;
        this.Cliente = Cliente;
        this.Fecha = Fecha;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public int getIdFactura() {
        return IdFactura;
    }

    public void setIdFactura(int IdFactura) {
        this.IdFactura = IdFactura;
    }

    public int getIdSolicitud() {
        return IdSolicitud;
    }

    public void setIdSolicitud(int IdSolicitud) {
        this.IdSolicitud = IdSolicitud;
    }

    public Solicitud getSolicitud() {
        return Solicitud;
    }

    public void setSolicitud(Solicitud Solicitud) {
        this.Solicitud = Solicitud;
    }

    public int getIdUser() {
        return IdUser;
    }

    public void setIdUser(int IdUser) {
        this.IdUser = IdUser;
    }

    public Usuario getCliente() {
        return Cliente;
    }

    public void setCliente(Usuario Cliente) {
        this.Cliente = Cliente;
    }
    
}
