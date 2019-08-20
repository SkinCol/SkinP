/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alejandro
 */
public class DispositivoDAO {
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
        public List ListarTelefonos() {
        List<Dispositivo> phone = new ArrayList();
        String sql = "Select * From dispositivo where tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo p = new Dispositivo();
                p.setIdDispositivo(rs.getInt(1));
                p.setMarca(rs.getString(2));
                p.setModelo(rs.getString(3));
                p.setTipo(rs.getString(4));
                p.setImagen(rs.getBinaryStream(5));

                phone.add(p);
            }
        } catch (Exception e) {
        }
        return phone;
    }

    public List ListarTablets() {
        List<Dispositivo> tabletas = new ArrayList();
        String sql = "Select * From dispositivo where tipo='Tablets'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo t = new Dispositivo();
                t.setIdDispositivo(rs.getInt(1));
                t.setMarca(rs.getString(2));
                t.setModelo(rs.getString(3));
                t.setTipo(rs.getString(4));
                t.setImagen(rs.getBinaryStream(5));

                tabletas.add(t);
            }
        } catch (Exception e) {
        }
        return tabletas;
    }

    public List ListarPortatiles() {
        List<Dispositivo> portatiles = new ArrayList();
        String sql = "Select * From dispositivo where tipo='Portatiles'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo l = new Dispositivo();
                l.setIdDispositivo(rs.getInt(1));
                l.setMarca(rs.getString(2));
                l.setModelo(rs.getString(3));
                l.setTipo(rs.getString(4));
                l.setImagen(rs.getBinaryStream(5));

                portatiles.add(l);
            }
        } catch (Exception e) {
        }
        return portatiles;
    }

    public List ListarConsolas() {
        List<Dispositivo> consolas = new ArrayList();
        String sql = "Select * From dispositivo where tipo='Consolas'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo c = new Dispositivo();
                c.setIdDispositivo(rs.getInt(1));
                c.setMarca(rs.getString(2));
                c.setModelo(rs.getString(3));
                c.setTipo(rs.getString(4));
                c.setImagen(rs.getBinaryStream(5));

                consolas.add(c);
            }
        } catch (Exception e) {
        }
        return consolas;
    }

    public void listarImg(int id, HttpServletResponse response) {
        String sql = "select * from dispositivo where IdDispositivo=" + id;

        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputstream = null;

        try {
            outputStream = response.getOutputStream();
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("Imagen");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputstream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputstream.write(i);
            }
        } catch (Exception e) {
        }
    }
}
