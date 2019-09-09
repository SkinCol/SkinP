/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import ModelCRUD.FacInsumo;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface FacturaInsumoCRUD {
    public List Listar();
    public FacInsumo List(int IdFacInsumo);
    public boolean Add(FacInsumo fi);
    public boolean Edit(FacInsumo fi);
    public boolean Delete(int IdFacInsumo);
}
