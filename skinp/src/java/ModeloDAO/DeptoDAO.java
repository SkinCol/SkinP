/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUDdepto;
import Model.Departamento;
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
public class DeptoDAO implements CRUDdepto{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Departamento de= new Departamento();

    @Override
    public List listar() {
        ArrayList<Departamento>list=new  ArrayList<>();
       String sql = "select * from departamento";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Departamento de = new Departamento();
                de.setIdDepartamento(rs.getInt("IdDepartamento"));
                de.setNombre(rs.getString("Nombre"));
                list.add(de);                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Departamento list(int IdDepartamento) {
        String sql = "select * from departamento where IdDepartamento="+IdDepartamento;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                de.setIdDepartamento(rs.getInt("IdDepartamento"));
                de.setNombre(rs.getString("Nombre"));  
            }
        } catch (Exception e) {
        }
       return de;
    }

    @Override
    public boolean add(Departamento de) {
        String sql = "insert into departamento (Nombre) values ('"+de.getNombre()+"')";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Departamento de) {
        String sql = "update departamento set Nombre='"+de.getNombre()+"' where IdDepartamento="+de.getIdDepartamento();
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdDepartamento) {
        String sql = "delete from departamento where IdDepartamentor =" + IdDepartamento;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
