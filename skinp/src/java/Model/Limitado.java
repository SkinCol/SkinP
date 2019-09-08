/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import ModeloDAO.LimitadoDAO;
import config.Conexion;
import config.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author angel
 */
public class Limitado {
    private int IdLimitado;
    private String Nombre;
    private String Imagen;
    private List<Limitado> listaLimitado;

    public Limitado() {
    }

    public Limitado(String Nombre, String Imagen) {
        this.Nombre = Nombre;
        this.Imagen = Imagen;
    }

    public int getIdLimitado() {
        return IdLimitado;
    }

    public void setIdLimitado(int IdLimitado) {
        this.IdLimitado = IdLimitado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }
   
   
}
