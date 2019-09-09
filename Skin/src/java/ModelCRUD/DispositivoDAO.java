/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.DispositivoCRUD;
import Model.Dispositivo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class DispositivoDAO implements DispositivoCRUD {
    Conexion cn = new Conexion();
    Connection con; 
    PreparedStatement ps;
    ResultSet rs;
    Dispositivo di = new Dispositivo();

    @Override
    public java.util.List Listar() {
        List<Dispositivo> Dispositivo = new ArrayList();
        String sql = "select * from dispositivo";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                di.setIdDispositivo(rs.getInt(1));
                
                
            }
        } catch (Exception e) {
        }
        return Dispositivo;
    }

    @Override
    public Dispositivo List(int IdDispositivo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Add(Dispositivo di) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Edit(Dispositivo di) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Delete(int Dispositivo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
