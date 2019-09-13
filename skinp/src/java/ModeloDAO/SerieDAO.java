/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUDserie;
import Model.Serie;
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
public class SerieDAO implements CRUDserie {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Serie ser= new Serie();


    @Override
    public List listar() {
        ArrayList<Serie>list=new  ArrayList<>();
       String sql = "select * from serie";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Serie se = new Serie();
                se.setIdSerie(rs.getInt("IdSerie"));
                se.setNombre(rs.getString("Nombre"));
                list.add(se);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Serie list(int IdSerie) {
        String sql = "select * from serie where IdSerie="+IdSerie;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                ser.setIdSerie(rs.getInt("IdSerie"));
                ser.setNombre(rs.getString("Nombre"));       
            }
        } catch (Exception e) {
        }
       return ser;
    }

    @Override
    public boolean add(Serie se) {
        String sql = "insert into serie (Nombre) values ('"+se.getNombre()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Serie se) {
        String sql = "update serie set Nombre='"+se.getNombre()+"' where IdSerie="+se.getIdSerie();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdSerie) {
        String sql = "delete from serie where IdSerie =" + IdSerie;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
