
package ModeloDAO;

import Interfaces.CRUDlimitado;
import Model.Limitado;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.CRUDproveedor;


public class LimitadoDAO implements CRUDlimitado{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Limitado lim= new Limitado();

    @Override
    public List listar() {
       ArrayList<Limitado>list=new  ArrayList<>();
       String sql = "select * from limitado";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Limitado li = new Limitado();
                li.setIdLimitado(rs.getInt("IdLimitado"));
                li.setNombre(rs.getString("Nombre"));
                li.setImagen(rs.getString("Imagen"));
                list.add(li);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Limitado list(int IdLimitado) {
        String sql = "select * from limitado where IdLimitado="+IdLimitado;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                lim.setIdLimitado(rs.getInt("IdLimitado"));
                lim.setNombre(rs.getString("Nombre"));
                lim.setImagen(rs.getString("Imagen"));
       
            }
        } catch (Exception e) {
        }
       return lim;
    }

    @Override
    public boolean add(Limitado li) {
        String sql = "insert into limitado (Nombre, Imagen) values ('"+li.getNombre()+"','"+ li.getImagen()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Limitado li) {
        String sql = "update Llimitado set Nombre='"+li.getNombre()+"',Imagen='"+ li.getImagen()+"' where IdLimitado="+li.getIdLimitado();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdLimitado) {
        String sql = "delete from limitado where IdLimitado =" + IdLimitado;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
