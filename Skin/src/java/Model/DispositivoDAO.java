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
public class DispositivoDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ListariPhone() {
        List<Dispositivo> iPhone = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Apple' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo i = new Dispositivo();
                i.setIdDispositivo(rs.getInt(1));
                i.setMarca(rs.getString(2));
                i.setModelo(rs.getString(3));
                i.setTipo(rs.getString(4));
                i.setImagen(rs.getString(5));

                iPhone.add(i);
            }
            con.close();
        } catch (Exception e) {
        }
        return iPhone;
    }

    public List ListarSamsung() {
        List<Dispositivo> Samsung = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Samsung' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo sa = new Dispositivo();
                sa.setIdDispositivo(rs.getInt(1));
                sa.setMarca(rs.getString(2));
                sa.setModelo(rs.getString(3));
                sa.setTipo(rs.getString(4));
                sa.setImagen(rs.getString(5));

                Samsung.add(sa);
            }
            con.close();
        } catch (Exception e) {
        }
        return Samsung;
    }
    
        public List ListarGoogle() {
        List<Dispositivo> Google = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Google' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo sa = new Dispositivo();
                sa.setIdDispositivo(rs.getInt(1));
                sa.setMarca(rs.getString(2));
                sa.setModelo(rs.getString(3));
                sa.setTipo(rs.getString(4));
                sa.setImagen(rs.getString(5));

                Google.add(sa);
            }
            con.close();
        } catch (Exception e) {
        }
        return Google;
    }
}
