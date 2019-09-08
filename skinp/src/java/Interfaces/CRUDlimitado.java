/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Limitado;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDlimitado {
    public List listar();
    public Limitado list(int IdLimitado);
    public boolean add (Limitado li);
    public boolean edit (Limitado li);
    public boolean eliminar (int IdLimitado);
}
