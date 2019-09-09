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
public class Envio {
    private int IdEnvio;
    private int IdUsuario;
    private Usuario Cliente;
    private int IdFactura;
    private Factura Factura;
    private String Fecha;

    public Envio() {
    }

    public Envio(int IdEnvio, int IdUsuario, Usuario Cliente, int IdFactura, Factura Factura, String Fecha) {
        this.IdEnvio = IdEnvio;
        this.IdUsuario = IdUsuario;
        this.Cliente = Cliente;
        this.IdFactura = IdFactura;
        this.Factura = Factura;
        this.Fecha = Fecha;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public int getIdEnvio() {
        return IdEnvio;
    }

    public void setIdEnvio(int IdEnvio) {
        this.IdEnvio = IdEnvio;
    }

    public int getIdUsuario() {
        return IdUsuario;
    }

    public void setIdUsuario(int IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    public Usuario getCliente() {
        return Cliente;
    }

    public void setCliente(Usuario Cliente) {
        this.Cliente = Cliente;
    }

    public int getIdFactura() {
        return IdFactura;
    }

    public void setIdFactura(int IdFactura) {
        this.IdFactura = IdFactura;
    }

    public Factura getFactura() {
        return Factura;
    }

    public void setFactura(Factura Factura) {
        this.Factura = Factura;
    }
    
}
