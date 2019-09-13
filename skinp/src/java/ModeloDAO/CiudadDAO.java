/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUDciudad;
import Model.Ciudad;
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
public class CiudadDAO implements CRUDciudad{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Ciudad ciu= new Ciudad();

    @Override
    public List listar() {
        ArrayList<Ciudad>list=new  ArrayList<>();
       String sql = "SELECT c.IdCiudad, d.Nombre as Departamento, c.Nombre \n" +
                     "FROM ciudad c, departamento d \n" +
                     "WHERE d.IdDepartamento=c.IdDepartamento";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Ciudad ci = new Ciudad();
                ci.setIdCiudad(rs.getInt("IdCiudad"));
                ci.setIdDepartamento(rs.getInt("IdDepartamento"));
                ci.setNombre(rs.getString("Nombre"));
                list.add(ci);
                
            }
        } catch (Exception e) {
        }
       return list;
    }
    

    @Override
    public Ciudad list(int IdCiudad) {
        String sql = "select * from ciudad where IdCiudad="+IdCiudad;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                ciu.setIdCiudad(rs.getInt("IdCiudad"));
                ciu.setIdDepartamento(rs.getInt("IdDepartamento"));
                ciu.setNombre(rs.getString("Nombre"));      
            }
        } catch (Exception e) {
        }
       return ciu;
    }

    @Override
    public boolean add(Ciudad ci) {
        String sql = "insert into ciudad (IdDepartamento, Nombre) values ('"+ci.getNombre()+"','"+ ci.getNombre()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Ciudad ci) {
        String sql = "update ciudad set IdDepartamento='"+ci.getIdDepartamento()+"', Nombre='"+ci.getNombre()+"' where IdCiudad="+ci.getIdCiudad();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdCiudad) {
        String sql = "delete from ciudad where IdCiudad =" + IdCiudad;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
