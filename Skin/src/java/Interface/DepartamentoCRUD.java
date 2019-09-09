/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import ModelCRUD.Departamento;
import java.util.List;

/**
 *
 * @author alejandro
 */
public interface DepartamentoCRUD {
    public List Listar();
    public Departamento List(int IdDepartamento);
    public boolean Add(Departamento de);
    public boolean Edit(Departamento de);
    public boolean Delete(int IdDepartamento);
}
