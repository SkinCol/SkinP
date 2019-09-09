/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.DispositivoCRUD;
import Model.Dispositivo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class DispositivoDAO implements DispositivoCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Dispositivo di = new Dispositivo();

    @Override
    public java.util.List Listar() {
        List<Dispositivo> Dispositivo = new ArrayList();
        String sql = "select * from dispositivo";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo di = new Dispositivo();
                di.setIdDispositivo(rs.getInt(1));
                di.setModelo(rs.getString(2));
                di.setMarca(rs.getString(3));
                di.setTipo(rs.getString(4));
                di.setImagen(rs.getString(5));
                Dispositivo.add(di);
            }
        } catch (Exception e) {
        }
        return Dispositivo;
    }

    @Override
    public Dispositivo List(int IdDispositivo) {
        String sql = "select * from dispositivo where IdDispositivo=" + IdDispositivo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                di.setIdDispositivo(rs.getInt(1));
                di.setModelo(rs.getString(2));
                di.setMarca(rs.getString(3));
                di.setTipo(rs.getString(4));
                di.setImagen(rs.getString(5));
            }
        } catch (Exception e) {
        }
        return di;
    }

    @Override
    public boolean Add(Dispositivo dis) {
        String sql = "insert into dispositivo (Modelo, Marca, Tipo, Imagen) values ('" + dis.getModelo() + "','" + dis.getMarca() + "','" + dis.getTipo() + "','" + dis.getImagen() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Edit(Dispositivo dis) {
        String sql = "update dispositivo set Modelo='" + dis.getModelo() + "',Marca='" + dis.getMarca() + "',Tipo='" + dis.getTipo() + "',Imagen='" + dis.getImagen() + "' where IdDispositivo=" + dis.getIdDispositivo();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Delete(int IdDispositivo) {
        String sql = "delete from dispositivo where IdDispositivo =" + IdDispositivo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
