/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.FacInsumos;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDfacinsumos {
    public List listar();
    public FacInsumos list(int IdFacturaInsumos);
    public boolean add (FacInsumos fi);
    public boolean edit (FacInsumos fi);
    public boolean eliminar (int IdFacturaInsumos);
}
