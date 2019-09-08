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
public class SolicitudSkin {

    private int IdSolicitud;
    private int IdSkin;
    private int IdDispositivo;
    private double CostoPedido;
    private int Cantidad;
    private double SubTotal;

    public SolicitudSkin() {
    }

    public SolicitudSkin(int IdSolicitud, int IdSkin, int IdDispositivo, double CostoPedido, int Cantidad, double SubTotal) {
        this.IdSolicitud = IdSolicitud;
        this.IdSkin = IdSkin;
        this.IdDispositivo = IdDispositivo;
        this.CostoPedido = CostoPedido;
        this.Cantidad = Cantidad;
        this.SubTotal = SubTotal;
    }
    

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public int getIdSolicitud() {
        return IdSolicitud;
    }

    public void setIdSolicitud(int IdSolicitud) {
        this.IdSolicitud = IdSolicitud;
    }

    public int getIdSkin() {
        return IdSkin;
    }

    public void setIdSkin(int IdSkin) {
        this.IdSkin = IdSkin;
    }

    public int getIdDispositivo() {
        return IdDispositivo;
    }

    public void setIdDispositivo(int IdDispositivo) {
        this.IdDispositivo = IdDispositivo;
    }

    public double getCostoPedido() {
        return CostoPedido;
    }

    public void setCostoPedido(double CostoPedido) {
        this.CostoPedido = CostoPedido;
    }

    public double getSubTotal() {
        return SubTotal;
    }

    public void setSubTotal(double SubTotal) {
        this.SubTotal = SubTotal;
    }

}
