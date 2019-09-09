/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.MaterialCRUD;
import ModelCRUD.Material;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class MaterialDAO implements MaterialCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Material m = new Material();

    @Override
    public java.util.List Listar() {
        List<Material> Material = new ArrayList();
        String sql = "select * from material";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Material m = new Material();
                m.setIdMaterial(rs.getInt(1));
                m.setNombre(rs.getString(2));
                m.setDescripcionn(rs.getString(3));
                Material.add(m);

            }
        } catch (Exception e) {
        }
        return Material;
    }

    @Override
    public Material List(int IdMaterial) {
        String sql = "select * from proveedor where IdMaterial=" + IdMaterial;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                m.setIdMaterial(rs.getInt(1));
                m.setNombre(rs.getString(2));
                m.setDescripcionn(rs.getString(3));

            }
        } catch (Exception e) {
        }
        return m;
    }

    @Override
    public boolean Add(Material m) {
        String sql = "insert into material (Nombre, Descripcion) values ('" + m.getNombre() + "','" + m.getDescripcionn() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Edit(Material m) {
        String sql = "update proveedor set Nombre='" + m.getNombre() + "',Descripcion='" + m.getDescripcionn() + "' where IdMaterial=" + m.getIdMaterial();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Delete(int IdMaterial) {
        String sql = "delete from material where IdMaterial =" + IdMaterial;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
