/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class SkinsiPhone5DAO {
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    public Skin listarId(int IdSkin){
        String sql ="Select * From Skin where IdSkin ="+IdSkin;
        Skin s = new Skin();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
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

    public List CarbonSeriesiPhone5() {
        List<Skin> Carbon = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 1 and IdDispositivo = 163";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin car = new Skin();
                car.setIdSkin(rs.getInt(1));
                car.setIdSerie(rs.getInt(2));
                car.setIdLimitado(rs.getInt(3));
                car.setIdDispositivo(rs.getInt(4));
                car.setNombre(rs.getString(5));
                car.setImagen(rs.getString(6));
                car.setStock(rs.getInt(7));
                car.setCostoSkin(rs.getDouble(8));

                Carbon.add(car);
            }
            con.close();
        } catch (Exception e) {

        }

        return Carbon;
    }

    public List BoardSeriesiPhone5() {
        List<Skin> board = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 10 and IdDispositivo = 163";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin bo = new Skin();
                bo.setIdSkin(rs.getInt(1));
                bo.setIdSerie(rs.getInt(2));
                bo.setIdLimitado(rs.getInt(3));
                bo.setIdDispositivo(rs.getInt(4));
                bo.setNombre(rs.getString(5));
                bo.setImagen(rs.getString(6));
                bo.setStock(rs.getInt(7));
                bo.setCostoSkin(rs.getDouble(8));

                board.add(bo);
            }
            con.close();
        } catch (Exception e) {

        }

        return board;
    }

    public List ColorSeriesiPhone5() {
        List<Skin> Color = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 2 and IdDispositivo = 163";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin co = new Skin();
                co.setIdSkin(rs.getInt(1));
                co.setIdSerie(rs.getInt(2));
                co.setIdLimitado(rs.getInt(3));
                co.setIdDispositivo(rs.getInt(4));
                co.setNombre(rs.getString(5));
                co.setImagen(rs.getString(6));
                co.setStock(rs.getInt(7));
                co.setCostoSkin(rs.getDouble(8));

                Color.add(co);
            }
            con.close();
        } catch (Exception e) {

        }

        return Color;
    }

    public List WoodSeriesiPhone5() {
        List<Skin> Wood = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 5 and IdDispositivo = 163";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Skin w = new Skin();
                w.setIdSkin(rs.getInt(1));
                w.setIdSerie(rs.getInt(2));
                w.setIdLimitado(rs.getInt(3));
                w.setIdDispositivo(rs.getInt(4));
                w.setNombre(rs.getString(5));
                w.setImagen(rs.getString(6));
                w.setStock(rs.getInt(7));
                w.setCostoSkin(rs.getDouble(8));

                Wood.add(w);
            }
            con.close();
        } catch (Exception e) {

        }

        return Wood;
    }

    public List MetalSeriesiPhone5() {
        List<Skin> Metal = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 6 and IdDispositivo = 163";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin me = new Skin();
                me.setIdSkin(rs.getInt(1));
                me.setIdSerie(rs.getInt(2));
                me.setIdLimitado(rs.getInt(3));
                me.setIdDispositivo(rs.getInt(4));
                me.setNombre(rs.getString(5));
                me.setImagen(rs.getString(6));
                me.setStock(rs.getInt(7));
                me.setCostoSkin(rs.getDouble(8));

                Metal.add(me);
            }
            con.close();
        } catch (Exception e) {

        }

        return Metal;
    }

}
