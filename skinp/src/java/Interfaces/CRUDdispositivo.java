/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Dispositivo;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDdispositivo {
    public List listar();
    public Dispositivo list(int IdDispositivo);
    public boolean add (Dispositivo di);
    public boolean edit (Dispositivo di);
    public boolean eliminar (int IdDispositivo);
}
