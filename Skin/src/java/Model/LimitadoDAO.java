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
 * @author aleja
 */
public class LimitadoDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ListarLimitados() {
        List<Limitado> limitado = new ArrayList();
        String sql = "SELECT * FROM `limitado`";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Limitado li = new Limitado();
                li.setIdLimitado(rs.getInt(1));
                li.setNombre(rs.getString(2));
                li.setImagen(rs.getString(3));
                li.setEnlace(rs.getString(4));
                
                limitado.add(li);
            }
            con.close();
        } catch (Exception e) {
        }
        return limitado;
    }

}
