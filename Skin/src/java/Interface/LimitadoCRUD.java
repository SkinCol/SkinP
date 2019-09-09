/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Limitado;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface LimitadoCRUD {
    public List Listar();
    public Limitado List(int IdLimitado);
    public boolean Add(Limitado li);
    public boolean Edit(Limitado li);
    public boolean Delete(int IdLimitado);
}
