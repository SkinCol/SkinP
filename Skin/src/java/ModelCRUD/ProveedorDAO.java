/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.ProveedorCRUD;
import ModelCRUD.Proveedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class ProveedorDAO implements ProveedorCRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedor pro = new Proveedor();

    @Override
    public java.util.List Listar() {
        List<Proveedor> Proveedor = new ArrayList();
        String sql = "select * from proveedor";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor pro = new Proveedor();
                pro.setIdProveedor(rs.getInt(1));
                pro.setNombre(rs.getString(2));
                pro.setNIT(rs.getString(3));
                pro.setDireccion(rs.getString(4));
                pro.setCorreo(rs.getString(5));
                pro.setTelefono(rs.getString(6));
                Proveedor.add(pro);

            }
        } catch (Exception e) {
        }
        return Proveedor;
    }

    @Override
    public Proveedor List(int IdProveedor) {
        String sql = "select * from proveedor where IdProveedor=" + IdProveedor;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                pro.setIdProveedor(rs.getInt(1));
                pro.setNombre(rs.getString(2));
                pro.setNIT(rs.getString(3));
                pro.setDireccion(rs.getString(4));
                pro.setCorreo(rs.getString(5));
                pro.setTelefono(rs.getString(6));
            }
        } catch (Exception e) {
        }
        return pro;
    }

    @Override
    public boolean Add(Proveedor pro) {
        String sql = "insert into proveedor (Nombre, NIT, Direccion, Correo, Telefono) values ('" + pro.getNombre() + "','" + pro.getNIT() + "','" + pro.getDireccion() + "','" + pro.getCorreo() + "','" + pro.getTelefono() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Edit(Proveedor pro) {
        String sql = "update proveedor set Nombre='" + pro.getNombre() + "',NIT='" + pro.getNIT() + "',Direccion='" + pro.getDireccion() + "',Correo='" + pro.getCorreo() + "',Telefono='" + pro.getTelefono() + "' where IdProveedor=" + pro.getIdProveedor();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Delete(int IdProveedor) {
        String sql = "delete from proveedor where IdProveedor =" + IdProveedor;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
