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
public class SkinDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ListarCarbonSeries() {
        List<Skin> Carbon = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 1 and IdDispositivo = 160";
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

    public List ListarCamoSeries() {
        List<Skin> Camo = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 3 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin ca = new Skin();
                ca.setIdSkin(rs.getInt(1));
                ca.setIdSerie(rs.getInt(2));
                ca.setIdLimitado(rs.getInt(3));
                ca.setIdDispositivo(rs.getInt(4));
                ca.setNombre(rs.getString(5));
                ca.setImagen(rs.getString(6));
                ca.setStock(rs.getInt(7));
                ca.setCostoSkin(rs.getDouble(8));

                Camo.add(ca);
            }
            con.close();
        } catch (Exception e) {

        }

        return Camo;
    }

    public List ListarColorSeries() {
        List<Skin> Color = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 2 and IdDispositivo = 160";
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

    public List ListarWoodSeries() {
        List<Skin> Wood = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 5 and IdDispositivo = 160";
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

    public List ListarMetalSeries() {
        List<Skin> Metal = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 6 and IdDispositivo = 160";
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

    public List ListarLeatherSeries() {
        List<Skin> Leather = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 8 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin t = new Skin();
                t.setIdSkin(rs.getInt(1));
                t.setIdSerie(rs.getInt(2));
                t.setIdLimitado(rs.getInt(3));
                t.setIdDispositivo(rs.getInt(4));
                t.setNombre(rs.getString(5));
                t.setImagen(rs.getString(6));
                t.setStock(rs.getInt(7));
                t.setCostoSkin(rs.getDouble(8));

                Leather.add(t);
            }
            con.close();
        } catch (Exception e) {

        }

        return Leather;
    }

    public List ListarGlitzSeries() {
        List<Skin> Glitz = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 4 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin g = new Skin();
                g.setIdSkin(rs.getInt(1));
                g.setIdSerie(rs.getInt(2));
                g.setIdLimitado(rs.getInt(3));
                g.setIdDispositivo(rs.getInt(4));
                g.setNombre(rs.getString(5));
                g.setImagen(rs.getString(6));
                g.setStock(rs.getInt(7));
                g.setCostoSkin(rs.getDouble(8));

                Glitz.add(g);
            }
            con.close();
        } catch (Exception e) {

        }

        return Glitz;
    }

    public List ListarStoneSeries() {
        List<Skin> Stone = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 9 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin st = new Skin();
                st.setIdSkin(rs.getInt(1));
                st.setIdSerie(rs.getInt(2));
                st.setIdLimitado(rs.getInt(3));
                st.setIdDispositivo(rs.getInt(4));
                st.setNombre(rs.getString(5));
                st.setImagen(rs.getString(6));
                st.setStock(rs.getInt(7));
                st.setCostoSkin(rs.getDouble(8));

                Stone.add(st);
            }
            con.close();
        } catch (Exception e) {

        }

        return Stone;
    }

    public List ListarAlcantaraSeries() {
        List<Skin> Alcantara = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdLimitado = 3 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin al = new Skin();
                al.setIdSkin(rs.getInt(1));
                al.setIdSerie(rs.getInt(2));
                al.setIdLimitado(rs.getInt(3));
                al.setIdDispositivo(rs.getInt(4));
                al.setNombre(rs.getString(5));
                al.setImagen(rs.getString(6));
                al.setStock(rs.getInt(7));
                al.setCostoSkin(rs.getDouble(8));

                Alcantara.add(al);
            }
            con.close();
        } catch (Exception e) {

        }

        return Alcantara;
    }

    public List ListarNaturalSeries() {
        List<Skin> Natural = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdSerie = 7 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin na = new Skin();
                na.setIdSkin(rs.getInt(1));
                na.setIdSerie(rs.getInt(2));
                na.setIdLimitado(rs.getInt(3));
                na.setIdDispositivo(rs.getInt(4));
                na.setNombre(rs.getString(5));
                na.setImagen(rs.getString(6));
                na.setStock(rs.getInt(7));
                na.setCostoSkin(rs.getDouble(8));

                Natural.add(na);
            }
            con.close();
        } catch (Exception e) {

        }

        return Natural;
    }

    public List ListarAniversarioSeries() {
        List<Skin> Aniversario = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdLimitado = 14 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin an = new Skin();
                an.setIdSkin(rs.getInt(1));
                an.setIdSerie(rs.getInt(2));
                an.setIdLimitado(rs.getInt(3));
                an.setIdDispositivo(rs.getInt(4));
                an.setNombre(rs.getString(5));
                an.setImagen(rs.getString(6));
                an.setStock(rs.getInt(7));
                an.setCostoSkin(rs.getDouble(8));

                Aniversario.add(an);
            }
            con.close();
        } catch (Exception e) {

        }

        return Aniversario;
    }

    public List ListarRetroSeries() {
        List<Skin> Retro = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdLimitado = 15 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin re = new Skin();
                re.setIdSkin(rs.getInt(1));
                re.setIdSerie(rs.getInt(2));
                re.setIdLimitado(rs.getInt(3));
                re.setIdDispositivo(rs.getInt(4));
                re.setNombre(rs.getString(5));
                re.setImagen(rs.getString(6));
                re.setStock(rs.getInt(7));
                re.setCostoSkin(rs.getDouble(8));

                Retro.add(re);
            }
            con.close();
        } catch (Exception e) {

        }

        return Retro;
    }

    public List ListarHempSeries() {
        List<Skin> Hemp = new ArrayList();
        String sql = "SELECT * FROM skin WHERE IdLimitado = 4 and IdDispositivo = 160";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skin he = new Skin();
                he.setIdSkin(rs.getInt(1));
                he.setIdSerie(rs.getInt(2));
                he.setIdLimitado(rs.getInt(3));
                he.setIdDispositivo(rs.getInt(4));
                he.setNombre(rs.getString(5));
                he.setImagen(rs.getString(6));
                he.setStock(rs.getInt(7));
                he.setCostoSkin(rs.getDouble(8));

                Hemp.add(he);
            }
            con.close();
        } catch (Exception e) {

        }

        return Hemp;
    }
}
