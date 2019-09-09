/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import ModelCRUD.Material;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface MaterialCRUD {
    public List Listar();
    public Material List(int IdMaterial);
    public boolean Add(Material m);
    public boolean Edit(Material m);
    public boolean Delete(int IdMaterial);
}
