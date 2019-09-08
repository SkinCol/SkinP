/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Proveedor;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDproveedor {
    public List listar();
    public Proveedor list(int IdProveedor);
    public boolean add (Proveedor pro);
    public boolean edit (Proveedor pro);
    public boolean eliminar (int IdProveedor);

}
