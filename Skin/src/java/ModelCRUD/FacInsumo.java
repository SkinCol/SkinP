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
public class FacInsumo {
    private int IdFacturaInsumo;
    private int IdProveedor;
    private Proveedor Proveedor;
    private int IdMaterial;
    private Material Material;
    private int Catidad;
    private double Costo;

    public FacInsumo() {
    }

    public FacInsumo(int IdFacturaInsumo, int IdProveedor, Proveedor Proveedor, int IdMaterial, Material Material, int Catidad, double Costo) {
        this.IdFacturaInsumo = IdFacturaInsumo;
        this.IdProveedor = IdProveedor;
        this.Proveedor = Proveedor;
        this.IdMaterial = IdMaterial;
        this.Material = Material;
        this.Catidad = Catidad;
        this.Costo = Costo;
    }

    public double getCosto() {
        return Costo;
    }

    public void setCosto(double Costo) {
        this.Costo = Costo;
    }

    public int getIdFacturaInsumo() {
        return IdFacturaInsumo;
    }

    public void setIdFacturaInsumo(int IdFacturaInsumo) {
        this.IdFacturaInsumo = IdFacturaInsumo;
    }

    public int getIdProveedor() {
        return IdProveedor;
    }

    public void setIdProveedor(int IdProveedor) {
        this.IdProveedor = IdProveedor;
    }

    public Proveedor getProveedor() {
        return Proveedor;
    }

    public void setProveedor(Proveedor Proveedor) {
        this.Proveedor = Proveedor;
    }

    public int getIdMaterial() {
        return IdMaterial;
    }

    public void setIdMaterial(int IdMaterial) {
        this.IdMaterial = IdMaterial;
    }

    public Material getMaterial() {
        return Material;
    }

    public void setMaterial(Material Material) {
        this.Material = Material;
    }

    public int getCatidad() {
        return Catidad;
    }

    public void setCatidad(int Catidad) {
        this.Catidad = Catidad;
    }
    
    
}
