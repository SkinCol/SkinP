/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.SkinCRUD;
import Model.Skin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class SkinDAO implements SkinCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Skin s = new Skin();

    @Override
    public List Listar() {
        List<Skin> Skin = new ArrayList();
        String sql = "Select * from skin";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Skin s = new Skin();
                s.setIdSkin(rs.getInt(1));
                s.setIdSerie(rs.getInt(2));
                s.setIdLimitado(rs.getInt(3));
                s.setIdDispositivo(rs.getInt(4));
                s.setNombre(rs.getString(5));
                s.setImagen(rs.getString(6));
                s.setStock(rs.getInt(7));
                s.setCostoSkin(rs.getDouble(8));
                Skin.add(s);
            }
        } catch (Exception e) {
        }
        return Skin;
    }

    @Override
    public Model.Skin List(int IdSkin) {
        String sql = "select * from skin where IdSkin=" + IdSkin;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                s.setIdSkin(rs.getInt(1));
                s.setIdSerie(rs.getInt(2));
                s.setIdLimitado(rs.getInt(3));
                s.setIdDispositivo(rs.getInt(4));
                s.setNombre(rs.getString(5));
                s.setImagen(rs.getString(6));
                s.setStock(rs.getInt(7));
                s.setCostoSkin(rs.getDouble(8));
            }
        } catch (Exception e) {
        }
        return s;
    }

    @Override
    public boolean Add(Model.Skin s) {
        String sql = "insert into skin (IdSerie, IdLimitado, IdDispositivo, Nombre, Imagen, Stock, CostoSkin) values ('"+s.getIdSerie()+"','"+ s.getIdLimitado()+"','"+ s.getIdDispositivo()+"','"+ s.getNombre()+ "','"+s.getImagen()+"','"+ s.getStock()+"','"+ s.getCostoSkin()+ "')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }   
        return false;
    }

    @Override
    public boolean Edit(Model.Skin s) {
        String sql = "update skin set IdSerie='"+s.getIdSerie()+"', IdLimitado='"+s.getIdLimitado()+"', IdDispositivo='"+s.getIdDispositivo()+"', Imagen='"+ s.getImagen()+"', Nombre='"+ s.getNombre()+"', Disponible='"+ s.getStock()+ "', CostoSkin='"+s.getCostoSkin()+"' where IdSkin="+s.getIdSkin();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) { 
        }
        return false;
    }

    @Override
    public boolean Delete(int IdSkin) {
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
