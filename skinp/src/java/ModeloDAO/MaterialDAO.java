
package ModeloDAO;

import Interfaces.CRUDmaterial;
import Model.Material;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class MaterialDAO implements CRUDmaterial {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Material m= new Material();

    @Override
    public List listar() {
        ArrayList<Material>list=new  ArrayList<>();
       String sql = "select * from material";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Material m = new Material();
                m.setIdMaterial(rs.getInt("IdMaterial"));
                m.setNombre(rs.getString("Nombre"));
                m.setDescripcion(rs.getString("Descripcion"));
                list.add(m);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Material list(int IdMaterial) {
        String sql = "select * from proveedor where IdMaterial="+IdMaterial;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                m.setIdMaterial(rs.getInt("IdMaterial"));
                m.setNombre(rs.getString("Nombre"));
                m.setDescripcion(rs.getString("Descripcion"));
       
            }
        } catch (Exception e) {
        }
       return m;
    }

    @Override
    public boolean add(Material m) {
        String sql = "insert into material (Nombre, Descripcion) values ('"+m.getNombre()+"','"+ m.getDescripcion()+"')";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Material m) {
        String sql = "update proveedor set Nombre='"+m.getNombre()+"',Descripcion='"+ m.getDescripcion()+"' where IdMaterial="+m.getIdMaterial();
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdMaterial) {
        String sql = "delete from material where IdMaterial =" + IdMaterial;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
