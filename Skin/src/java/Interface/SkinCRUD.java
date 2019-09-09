/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Skin;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface SkinCRUD {
    public List Listar();
    public Skin List(int IdSkin);
    public boolean Add(Skin s);
    public boolean Edit(Skin s);
    public boolean Delete(int IdSkin);
}
