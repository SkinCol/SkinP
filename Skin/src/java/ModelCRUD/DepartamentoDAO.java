/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelCRUD;

import Config.Conexion;
import Interface.DepartamentoCRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class DepartamentoDAO implements DepartamentoCRUD {

    Conexion cn = new Conexion();
    Connection con;
    ResultSet rs;
    PreparedStatement ps;
    Departamento de = new Departamento();

    @Override
    public List Listar() {
        List<Departamento> Departamento = new ArrayList();
        String sql = "Select + From departamento";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while(rs.next()){
                de.setIdDepartamento(rs.getInt(1));
                de.setNombre(rs.getString(2));
                Departamento.add(de);
            }
        } catch (Exception e) {
        }
        return Departamento;
    }

    @Override
    public Departamento List(int IdDepartamento) {
        String sql = "Select * from departamento where IdDepartamento = " + IdDepartamento;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                de.setIdDepartamento(rs.getInt(1));
                de.setNombre(rs.getString(2));
            }
        } catch (Exception e) {
        }
        return de;
    }

    @Override
    public boolean Add(Departamento de) {
       String sql = "insert into departamento (Nombre) values ('"+de.getNombre()+"')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Edit(Departamento de) {
        String sql = "update departamento set Nombre='"+de.getNombre()+"' where IdDepartamento="+de.getIdDepartamento();
        try {
            con = cn.getConnection();
            ps =con.prepareStatement(sql);
            ps.executeQuery();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Delete(int IdDepartamento) {
        String sql = "delete from departamento where IdDepartamentor =" + IdDepartamento;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;        
    }

}
