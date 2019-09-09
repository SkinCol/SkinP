/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.FacturaInsumoCRUD;
import ModelCRUD.FacInsumo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class FacInsumoDAO implements FacturaInsumoCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    FacInsumo fi = new FacInsumo();

    @Override
    public java.util.List Listar() {
        List<FacInsumo> FacInsumo = new ArrayList();
        String sql = "SELECT f.IdFacturaInsumos, p.Nombre as Proveedor, m.Nombre as Material, f.cantidad, f.costo\n"
                + "FROM proveedor p, material m, facturainsumos f \n"
                + "WHERE p.IdProveedor = f.IdProveedor and m.IdMaterial = f.IdMaterial";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                FacInsumo fi = new FacInsumo();
                fi.setIdFacturaInsumo(rs.getInt(1));
                fi.setIdProveedor(rs.getInt(2));
                fi.setIdMaterial(rs.getInt(3));
                fi.setCatidad(rs.getInt(4));
                fi.setCosto(rs.getDouble(5));
                FacInsumo.add(fi);
            }
        } catch (Exception e) {
        }
        return FacInsumo;
    }

    @Override
    public FacInsumo List(int IdFacInsumo) {
        String sql = "select * from facturainsumos where IdFacturaInsumos=" + IdFacInsumo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                fi.setIdFacturaInsumo(rs.getInt(1));
                fi.setIdProveedor(rs.getInt(2));
                fi.setIdMaterial(rs.getInt(3));
                fi.setCatidad(rs.getInt(4));
                fi.setCosto(rs.getDouble(5));
            }
        } catch (Exception e) {
        }
        return fi;
    }

    @Override
    public boolean Add(FacInsumo fi) {
        String sql = "insert into facturainsumos (IdProveedor, IdMaterial, Cantidad, Costo) values ('" + fi.getIdProveedor() + "','" + fi.getIdMaterial() + "','" + fi.getCatidad() + "','" + fi.getCosto() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Edit(FacInsumo fi) {
        String sql = "update facturainsumos set IdProveedor='" + fi.getIdProveedor() + "',IdMaterial='" + fi.getIdMaterial() + "',Cantidad='" + fi.getCatidad() + "',Costo='" + fi.getCosto() + "' where IdFacturaInsumos=" + fi.getIdFacturaInsumo();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Delete(int IdFacInsumo) {
        String sql = "delete from facturainsumos where IdFacturaInsumos =" + IdFacInsumo;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
