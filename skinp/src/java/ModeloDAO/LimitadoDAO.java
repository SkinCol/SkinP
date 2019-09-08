/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUDlimitado;
import Model.Limitado;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author angel
 */
public class LimitadoDAO implements CRUDlimitado {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Limitado li= new Limitado();


    @Override
    public List listar() {
         ArrayList<Limitado>list=new  ArrayList<>();
       String sql = "select * from limitado";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Limitado li = new Limitado();
                li.setIdLimitado(rs.getInt("IdLimitado"));
                li.setNombre(rs.getString("Nombre"));
                li.setImagen(rs.getString("Imagen"));
                list.add(li);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Limitado list(int IdLimitado) {
        String sql = "select * from limitado where IdLimitado="+IdLimitado;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                li.setIdLimitado(rs.getInt("IdLimitado"));
                li.setNombre(rs.getString("Nombre"));
                li.setImagen(rs.getString("Imagen"));
                
            }
        } catch (Exception e) {
        }
       return li;
    }

    @Override
    public boolean add(Limitado li) {
        String sql = "insert into limitado (Nombre, Imagen) values ('"+li.getNombre()+"','"+li.getImagen()+"')";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Limitado li) {
        String sql = "update limitado set Nombre='"+li.getNombre()+"', Imagen='"+li.getImagen()+"' where IdLimitado="+li.getIdLimitado();
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdLimitado) {
        String sql = "delete from limitado where IdLimitado =" + IdLimitado;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
