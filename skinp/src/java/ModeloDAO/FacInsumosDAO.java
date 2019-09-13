/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUDfacinsumos;
import Model.FacInsumos;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author angel
 */
public class FacInsumosDAO implements CRUDfacinsumos {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    FacInsumos fi= new FacInsumos();

    @Override
    public List listar() {
        ArrayList<FacInsumos>list=new  ArrayList<>();
        String sql = "SELECT f.IdFacturaInsumos, p.Nombre as Proveedor, m.Nombre as Material, f.cantidad, f.costo\n" +
                     "FROM proveedor p, material m, facturainsumos f \n" +
                     "WHERE p.IdProveedor = f.IdProveedor and m.IdMaterial = f.IdMaterial";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                FacInsumos fi = new FacInsumos();
                fi.setIdFacturaInsumos(rs.getInt("IdFacInsumos"));
                fi.setIdProveedor(rs.getInt("IdProveedor"));
                fi.setIdMaterial(rs.getInt("IdMaterial"));
                fi.setCantidad(rs.getInt("Cantidad"));
                fi.setCosto(rs.getDouble("Costo"));        
                list.add(fi);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public FacInsumos list(int IdFacturaInsumos) {
        String sql = "select * from facturainsumos where IdFacturaInsumos="+IdFacturaInsumos;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                fi.setIdFacturaInsumos(rs.getInt("IdFacInsumos"));
                fi.setIdProveedor(rs.getInt("IdProveedor"));
                fi.setIdMaterial(rs.getInt("IdMaterial"));
                fi.setCantidad(rs.getInt("Cantidad"));
                fi.setCosto(rs.getDouble("Costo"));
       
            }
        } catch (Exception e) {
        }
       return fi;
    }

    @Override
    public boolean add(FacInsumos fi) {
        String sql = "insert into facturainsumos (IdProveedor, IdMaterial, Cantidad, Costo) values ('"+fi.getIdProveedor()+"','"+ fi.getIdMaterial()+"','"+ fi.getCantidad()+"','"+fi.getCosto()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(FacInsumos fi) {
        String sql = "update facturainsumos set IdProveedor='"+fi.getIdProveedor()+"',IdMaterial='"+ fi.getIdMaterial()+"',Cantidad='"+ fi.getCantidad()+"',Costo='"+fi.getCosto()+"' where IdFacturaInsumos="+fi.getIdFacturaInsumos();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdFacturaInsumos) {
        String sql = "delete from facturainsumos where IdFacturaInsumos =" + IdFacturaInsumos;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
