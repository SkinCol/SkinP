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
public class Material {
    private int IdMaterial;
    private String Nombre;
    private String Descripcionn;

    public Material() {
    }

    public Material(int IdMaterial, String Nombre, String Descripcionn) {
        this.IdMaterial = IdMaterial;
        this.Nombre = Nombre;
        this.Descripcionn = Descripcionn;
    }

    public String getDescripcionn() {
        return Descripcionn;
    }

    public void setDescripcionn(String Descripcionn) {
        this.Descripcionn = Descripcionn;
    }

    public int getIdMaterial() {
        return IdMaterial;
    }

    public void setIdMaterial(int IdMaterial) {
        this.IdMaterial = IdMaterial;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
}
