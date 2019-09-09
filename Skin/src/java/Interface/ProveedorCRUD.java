/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import ModelCRUD.Proveedor;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface ProveedorCRUD {
    public List Listar();
    public Proveedor List(int IdProveedor);
    public boolean Add(Proveedor pro);
    public boolean Edit(Proveedor pro);
    public boolean Delete(int IdProveedor);
}
