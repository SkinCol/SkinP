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
public class CategoriaDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ListarCategorias() {
        List<Categoria> categoria = new ArrayList();
        String sql = "Select * From Categoria";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Categoria s = new Categoria();
                s.setIdCategoria(rs.getInt(1));
                s.setNombre(rs.getString(2));
                s.setImagen(rs.getBinaryStream(3));

                categoria.add(s);
            }
        } catch (Exception e) {
        }
        return categoria;
    }

    public void ListarImagen(int id, HttpServletResponse response) {
        String sql = "select * From Categoria Where IdCateria=" + id;

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
