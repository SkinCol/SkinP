
package ModeloDAO;

import Interfaces.CRUDdispositivo;
import Model.Dispositivo;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DispositivoDAO implements CRUDdispositivo{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Dispositivo di= new Dispositivo();

    @Override
    public List listar() {
        ArrayList<Dispositivo>list=new  ArrayList<>();
       String sql = "select * from dispositivo";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Dispositivo di = new Dispositivo();
                di.setIdDispositivo(rs.getInt("IdDispositivo"));
                di.setModelo(rs.getString("Modelo"));
                di.setMarca(rs.getString("Marca"));
                di.setTipo(rs.getString("Tipo"));
                di.setImagen(rs.getString("Imagen"));
                list.add(di);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Dispositivo list(int IdDispositivo) {
        String sql = "select * from dispositivo where IdDispositivo="+IdDispositivo;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                di.setIdDispositivo(rs.getInt("IdProveedor"));
                di.setModelo(rs.getString("Modelo"));
                di.setMarca(rs.getString("Marca"));
                di.setTipo(rs.getString("Tipo"));
                di.setImagen(rs.getString("Imagen"));
       
            }
        } catch (Exception e) {
        }
       return di;
    }

    @Override
    public boolean add(Dispositivo di) {
        String sql = "insert into dispositivo (Modelo, Marca, Tipo, Imagen) values ('"+di.getModelo()+"','"+ di.getMarca()+"','"+ di.getTipo()+"','"+di.getImagen()+"')";
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Dispositivo di) {
        String sql = "update dispositivo set Modelo='"+di.getModelo()+"',Marca='"+ di.getMarca()+"',Tipo='"+ di.getTipo()+"',Imagen='"+di.getImagen()+"' where IdDispositivo="+di.getIdDispositivo();
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int IdDispositivo) {
        String sql = "delete from dispositivo where IdDispositivo =" + IdDispositivo;
        try {
            con=cn.getCennection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
