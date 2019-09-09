/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Model.Dispositivo;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface DispositivoCRUD {
    public List Listar();
    public Dispositivo List(int IdDispositivo);
    public boolean Add(Dispositivo di);
    public boolean Edit(Dispositivo di);
    public boolean Delete(int Dispositivo);
}
