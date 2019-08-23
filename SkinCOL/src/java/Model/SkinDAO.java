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
 * @author alejandro
 */
public class SkinDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ListarSkinBrain() {
        List<Skins> brain = new ArrayList();
        String sql = "Select * From Skin where idCategoria=1";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skins b = new Skins();
                b.setIdSkin(rs.getInt(1));
                b.setIdCategoria(rs.getInt(2));
                b.setImagen(rs.getBinaryStream(3));
                b.setDisponible(rs.getInt(4));

                brain.add(b);
            }
            con.close();
        } catch (Exception e) {
        }
        return brain;
    }

    public List ListarSkinCarbon() {
        List<Skins> carbon = new ArrayList();
        String sql = "Select * From Skin where idCategoria=2";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skins c = new Skins();
                c.setIdSkin(rs.getInt(1));
                c.setIdCategoria(rs.getInt(2));
                c.setImagen(rs.getBinaryStream(3));
                c.setDisponible(rs.getInt(4));

                carbon.add(c);
            }
            con.close();
        } catch (Exception e) {
        }
        return carbon;
    }

    public List ListarSkinCamon() {
        List<Skins> camon = new ArrayList();
        String sql = "Select * From Skin where idCategoria=3";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skins ca = new Skins();
                ca.setIdSkin(rs.getInt(1));
                ca.setIdCategoria(rs.getInt(2));
                ca.setImagen(rs.getBinaryStream(3));
                ca.setDisponible(rs.getInt(4));

                camon.add(ca);
            }
            con.close();
        } catch (Exception e) {
        }
        return camon;
    }

    public List ListarSkinGlitz() {
        List<Skins> glitz = new ArrayList();
        String sql = "Select * From Skin where idCategoria=4";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skins g = new Skins();
                g.setIdSkin(rs.getInt(1));
                g.setIdCategoria(rs.getInt(2));
                g.setImagen(rs.getBinaryStream(3));
                g.setDisponible(rs.getInt(4));

                glitz.add(g);
            }
            con.close();
        } catch (Exception e) {
        }
        return glitz;
    }

    public List ListarSkinWood() {
        List<Skins> wood = new ArrayList();
        String sql = "Select * From Skin where idCategoria=5";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Skins w = new Skins();
                w.setIdSkin(rs.getInt(1));
                w.setIdCategoria(rs.getInt(2));
                w.setImagen(rs.getBinaryStream(3));
                w.setDisponible(rs.getInt(4));

                wood.add(w);
            }
            con.close();
        } catch (Exception e) {
        }
        return wood;
    }
    
    public void listarImagen(int id, HttpServletResponse response) {
        String sql = "select * from skin where Idskin=" + id;

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
            con.close();
        } catch (Exception e) {
        }
    }

}
