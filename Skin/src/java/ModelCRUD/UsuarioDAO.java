/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author alejandro
 */
public class UsuarioDAO {

    Conexion cn = new Conexion();
    Connection con;
    ResultSet rs;
    PreparedStatement ps;

    public Usuario Validacion(String Email, String Contrasena) {
        Usuario u = new Usuario();
        String sql = "select * from usuario where Email=? and Contrasena=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, Email);
            ps.setString(2, Contrasena);
            rs = ps.executeQuery();
            while (rs.next()) {
                u.setIdUser(rs.getInt(1));
                u.setEmail(rs.getString(9));
                u.setContrasena(rs.getString(10));
                u.setNombres(rs.getString(4));
            }
        } catch (Exception e) {
        }
        return u;
    }
}
