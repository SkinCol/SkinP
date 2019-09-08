
package ModeloDAO;

import Model.Proveedor;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.CRUDproveedor;


public class ProveedorDAO implements CRUDproveedor{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedor pro= new Proveedor();

    @Override
    public List listar() {
       ArrayList<Proveedor>list=new  ArrayList<>();
       String sql = "select * from proveedor";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Proveedor pro = new Proveedor();
                pro.setIdProveedor(rs.getInt("IdProveedor"));
                pro.setNombre(rs.getString("Nombre"));
                pro.setNIT(rs.getString("NIT"));
                pro.setDireccion(rs.getString("Direccion"));
                pro.setCorreo(rs.getString("Correo"));
                pro.setTelefono(rs.getString("Telefono"));
                list.add(pro);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Proveedor list(int IdProveedor) {
        String sql = "select * from proveedor where IdProveedor="+IdProveedor;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                pro.setIdProveedor(rs.getInt("IdProveedor"));
                pro.setNombre(rs.getString("Nombre"));
                pro.setNIT(rs.getString("NIT"));
                pro.setDireccion(rs.getString("Direccion"));
                pro.setCorreo(rs.getString("Correo"));
                pro.setTelefono(rs.getString("Telefono"));
       
            }
        } catch (Exception e) {
        }
       return pro;
    }

    @Override
    public boolean add(Proveedor pro) {
        String sql = "insert into proveedor (Nombre, NIT, Direccion, Correo, Telefono) values ('"+pro.getNombre()+"','"+ pro.getNIT()+"','"+ pro.getDireccion()+"','"+pro.getCorreo()+"','"+pro.getTelefono()+"')";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Proveedor pro) {
        String sql = "update proveedor set Nombre='"+pro.getNombre()+"',NIT='"+ pro.getNIT()+"',Direccion='"+ pro.getDireccion()+"',Correo='"+pro.getCorreo()+"',Telefono='"+pro.getTelefono()+"' where IdProveedor="+pro.getIdProveedor();
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdProveedor) {
        String sql = "delete from proveedor where IdProveedor =" + IdProveedor;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
