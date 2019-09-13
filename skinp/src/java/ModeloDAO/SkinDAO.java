/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUDskin;
import Model.Skin;
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
public class SkinDAO implements CRUDskin {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Skin s= new Skin();

    @Override
    public List listar() {
        ArrayList<Skin>list=new  ArrayList<>();
       String sql = "SELECT s.IdSkin, c.Nombre as Limitado, s.IdSkin, s.Imagen, s.ImagenUsuario, s.Disponible \n" +
                     "FROM skin s, limitado l \n" +
                     "WHERE l.IdLimitado=s.IdLimitado";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin();
                s.setIdSkin(rs.getInt(1));
                s.setIdLimitado(rs.getInt(2));
                s.setImagen(rs.getString(3));
                s.setImagenUsuario(rs.getString(4));
                s.setCostoSkin(rs.getDouble(5));
                s.setDisponible(rs.getBoolean(6));
                list.add(s);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Skin list(int IdSkin) {
        String sql = "select * from skin where IdSkin="+IdSkin;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                s.setIdSkin(rs.getInt("IdSkin"));
                s.setIdLimitado(rs.getInt("Limitado"));
                s.setImagen(rs.getString("Imagen"));
                s.setImagenUsuario(rs.getString("ImagenUsuario"));
                s.setDisponible(rs.getBoolean("Disponible"));
                s.setCostoSkin(rs.getDouble("CostoSkin"));
            }
        } catch (Exception e) {
        }
       return s;
    }

    @Override
    public boolean add(Skin s) {
        String sql = "insert into skin (IdLimitado, Imagen, Disponible) values ('"+s.getLimitado()+"','"+ s.getImagen()+"','"+ s.getImagenUsuario()+"','"+ s.isDisponible()+ "','"+s.getCostoSkin()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }   
        return false;
    }

    @Override
    public boolean edit(Skin s) {
        String sql = "update skin set IdLimitado='"+s.getLimitado()+"',Imagen='"+ s.getImagen()+"' ImagenUsuario='"+ s.getImagenUsuario()+"' Disponible='"+ s.isDisponible()+ "'CostoSkin='"+s.getCostoSkin()+"' where IdSkin="+s.getIdSkin();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) { 
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdSkin) {
        String sql = "delete from skin where IdSkin =" + IdSkin;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }  
}
