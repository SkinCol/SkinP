/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Ciudad;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDciudad {
    public List listar();
    public Ciudad list(int IdCiudad);
    public boolean add (Ciudad ci);
    public boolean edit (Ciudad ci);
    public boolean eliminar (int IdCiudad);
}
