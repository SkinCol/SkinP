/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.LimitadoCRUD;
import Model.Limitado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class LimitadoDAO implements LimitadoCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Limitado li = new Limitado();

    @Override
    public java.util.List Listar() {
        List<Limitado> Limitado = new ArrayList();
        String sql = "select * from limitado";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Limitado li = new Limitado();
                li.setIdLimitado(rs.getInt(1));
                li.setNombre(rs.getString(2));
                li.setImagen(rs.getString(3));
                Limitado.add(li);
            }
        } catch (Exception e) {
        }
        return Limitado;
    }

    @Override
    public Limitado List(int IdLimitado) {
        String sql = "select * from limitado where IdLimitado=" + IdLimitado;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                li.setIdLimitado(rs.getInt(1));
                li.setNombre(rs.getString(2));
                li.setImagen(rs.getString(3));

            }
        } catch (Exception e) {
        }
        return li;
    }

    @Override
    public boolean Add(Limitado li) {
        String sql = "insert into limitado (Nombre, Imagen) values ('" + li.getNombre() + "','" + li.getImagen() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Edit(Limitado li) {
        String sql = "update limitado set Nombre='" + li.getNombre() + "', Imagen='" + li.getImagen() + "' where IdLimitado=" + li.getIdLimitado();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Delete(int IdLimitado) {
        String sql = "delete from limitado where IdLimitado =" + IdLimitado;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
