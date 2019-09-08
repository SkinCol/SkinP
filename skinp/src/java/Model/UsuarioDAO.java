/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author angel 
 */
public class UsuarioDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
    public Usuario Validacion (String Email, String Contrasena){
        Usuario U=new Usuario();
        String sql="select * from usuario where Email=? and Contrasena=?";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.setString(1, Email);
            ps.setString(2, Contrasena);          
            rs=ps.executeQuery();
            while (rs.next()) {
                U.setIdUser(rs.getInt("IdUser"));
                U.setEmail(rs.getString("Email"));
                U.setContrasena(rs.getString("Contrasena"));
                U.setNombres(rs.getString("Nombres"));
            }
        } catch (Exception e) {
        }
        return U;
    }
}
