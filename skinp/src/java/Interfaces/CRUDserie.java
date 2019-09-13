/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Serie;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDserie {
    public List listar();
    public Serie list(int IdSerie);
    public boolean add (Serie se);
    public boolean edit (Serie se);
    public boolean eliminar (int IdSerie);

}
