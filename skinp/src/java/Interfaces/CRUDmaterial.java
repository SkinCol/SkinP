/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Material;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDmaterial {
    public List listar();
    public Material list(int IdMaterial);
    public boolean add (Material m);
    public boolean edit (Material m);
    public boolean eliminar (int IdMaterial);
}
