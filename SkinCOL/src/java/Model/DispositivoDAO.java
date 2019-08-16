/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import Config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vivelabtunja25
 */
public class DispositivoDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List listar() {
        List<Dispositivo> dispositivo = new ArrayList();
        String sql = "Select * From dispositivo";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo d = new Dispositivo();
                d.setIdDispositivo(rs.getInt(1));
                d.setMarca(rs.getString(2));
                d.setModelo(rs.getString(3));
                d.setTipo(rs.getString(4));
                d.setImagen(rs.getBinaryStream(5));

                dispositivo.add(d);
            }
        } catch (Exception e) {
        }
        return dispositivo;
    }

    public void listarimg(int id, HttpServletResponse response) {
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
            while ((i = bufferedInputStream.read())!= -1){
                bufferedOutputstream.write(i);
            }
        } catch (Exception e) {
        }
    }
}
