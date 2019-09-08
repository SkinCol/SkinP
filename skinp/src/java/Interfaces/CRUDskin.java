/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Skin;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDskin {
    public List listar();
    public Skin list(int IdSkin);
    public boolean add (Skin s);
    public boolean edit (Skin s);
    public boolean eliminar (int IdSkin);
}
