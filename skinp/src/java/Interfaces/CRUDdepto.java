/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Departamento;
import java.util.List;

/**
 *
 * @author angel
 */
public interface CRUDdepto {
    public List listar();
    public Departamento list(int IdDepartamento);
    public boolean add (Departamento de);
    public boolean edit (Departamento de);
    public boolean eliminar (int IdDepartamento);
}
