/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alejandro
 */
public class DispositivoDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List ListariPhone() {
        List<Dispositivo> iPhone = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Apple' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo i = new Dispositivo();
                i.setIdDispositivo(rs.getInt(1));
                i.setMarca(rs.getString(2));
                i.setModelo(rs.getString(3));
                i.setTipo(rs.getString(4));
                i.setImagen(rs.getString(5));

                iPhone.add(i);
            }
            con.close();
        } catch (Exception e) {
        }
        return iPhone;
    }

    public List ListarSamsung() {
        List<Dispositivo> Samsung = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Samsung' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo sa = new Dispositivo();
                sa.setIdDispositivo(rs.getInt(1));
                sa.setMarca(rs.getString(2));
                sa.setModelo(rs.getString(3));
                sa.setTipo(rs.getString(4));
                sa.setImagen(rs.getString(5));

                Samsung.add(sa);
            }
            con.close();
        } catch (Exception e) {
        }
        return Samsung;
    }

    public List ListarGoogle() {
        List<Dispositivo> Google = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Google' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo g = new Dispositivo();
                g.setIdDispositivo(rs.getInt(1));
                g.setMarca(rs.getString(2));
                g.setModelo(rs.getString(3));
                g.setTipo(rs.getString(4));
                g.setImagen(rs.getString(5));

                Google.add(g);
            }
            con.close();
        } catch (Exception e) {
        }
        return Google;
    }

    public List ListarHTC() {
        List<Dispositivo> HTC = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='HTC' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo h = new Dispositivo();
                h.setIdDispositivo(rs.getInt(1));
                h.setMarca(rs.getString(2));
                h.setModelo(rs.getString(3));
                h.setTipo(rs.getString(4));
                h.setImagen(rs.getString(5));

                HTC.add(h);
            }
            con.close();
        } catch (Exception e) {
        }
        return HTC;
    }

    public List ListarLG() {
        List<Dispositivo> LG = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='LG' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo lg = new Dispositivo();
                lg.setIdDispositivo(rs.getInt(1));
                lg.setMarca(rs.getString(2));
                lg.setModelo(rs.getString(3));
                lg.setTipo(rs.getString(4));
                lg.setImagen(rs.getString(5));

                LG.add(lg);
            }
            con.close();
        } catch (Exception e) {
        }
        return LG;
    }

    public List ListarMotorola() {
        List<Dispositivo> Motorola = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Motorola' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo m = new Dispositivo();
                m.setIdDispositivo(rs.getInt(1));
                m.setMarca(rs.getString(2));
                m.setModelo(rs.getString(3));
                m.setTipo(rs.getString(4));
                m.setImagen(rs.getString(5));

                Motorola.add(m);
            }
            con.close();
        } catch (Exception e) {
        }
        return Motorola;
    }

    public List ListarSony() {
        List<Dispositivo> Sony = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Sony' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo s = new Dispositivo();
                s.setIdDispositivo(rs.getInt(1));
                s.setMarca(rs.getString(2));
                s.setModelo(rs.getString(3));
                s.setTipo(rs.getString(4));
                s.setImagen(rs.getString(5));

                Sony.add(s);
            }
            con.close();
        } catch (Exception e) {
        }
        return Sony;
    }

    public List ListarHuawei() {
        List<Dispositivo> Huawei = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Huawei' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo ha = new Dispositivo();
                ha.setIdDispositivo(rs.getInt(1));
                ha.setMarca(rs.getString(2));
                ha.setModelo(rs.getString(3));
                ha.setTipo(rs.getString(4));
                ha.setImagen(rs.getString(5));

                Huawei.add(ha);
            }
            con.close();
        } catch (Exception e) {
        }
        return Huawei;
    }

    public List ListarXiaomi() {
        List<Dispositivo> Xiaomi = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Marca='Xiaomi' AND Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo x = new Dispositivo();
                x.setIdDispositivo(rs.getInt(1));
                x.setMarca(rs.getString(2));
                x.setModelo(rs.getString(3));
                x.setTipo(rs.getString(4));
                x.setImagen(rs.getString(5));

                Xiaomi.add(x);
            }
            con.close();
        } catch (Exception e) {
        }
        return Xiaomi;
    }

    public List ListarTablets() {
        List<Dispositivo> tabletas = new ArrayList();
        String sql = "Select * From dispositivo where tipo='Tablets'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo t = new Dispositivo();
                t.setIdDispositivo(rs.getInt(1));
                t.setMarca(rs.getString(2));
                t.setModelo(rs.getString(3));
                t.setTipo(rs.getString(4));
                t.setImagen(rs.getString(5));

                tabletas.add(t);
            }
            con.close();
        } catch (Exception e) {
        }
        return tabletas;
    }

    public List ListarPortatiles() {
        List<Dispositivo> portatiles = new ArrayList();
        String sql = "Select * From dispositivo where tipo='Portatiles'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo l = new Dispositivo();
                l.setIdDispositivo(rs.getInt(1));
                l.setMarca(rs.getString(2));
                l.setModelo(rs.getString(3));
                l.setTipo(rs.getString(4));
                l.setImagen(rs.getString(5));

                portatiles.add(l);
            }
            con.close();
        } catch (Exception e) {
        }
        return portatiles;
    }

    public List ListarPlayStation() {
        List<Dispositivo> PlayStation = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Tipo='Consolas' and Marca='PlayStation'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo ps = new Dispositivo();
                ps.setIdDispositivo(rs.getInt(1));
                ps.setMarca(rs.getString(2));
                ps.setModelo(rs.getString(3));
                ps.setTipo(rs.getString(4));
                ps.setImagen(rs.getString(5));

                PlayStation.add(ps);
            }
            con.close();
        } catch (Exception e) {
        }
        return PlayStation;
    }

    public List ListarXbox() {
        List<Dispositivo> Xbox = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Tipo='Consolas' and Marca='Xbox'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo xb = new Dispositivo();
                xb.setIdDispositivo(rs.getInt(1));
                xb.setMarca(rs.getString(2));
                xb.setModelo(rs.getString(3));
                xb.setTipo(rs.getString(4));
                xb.setImagen(rs.getString(5));

                Xbox.add(xb);
            }
            con.close();
        } catch (Exception e) {
        }
        return Xbox;
    }

    public List ListarNintendo() {
        List<Dispositivo> Nintendo = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Tipo='Consolas' and Marca='Nintendo'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo n = new Dispositivo();
                n.setIdDispositivo(rs.getInt(1));
                n.setMarca(rs.getString(2));
                n.setModelo(rs.getString(3));
                n.setTipo(rs.getString(4));
                n.setImagen(rs.getString(5));

                Nintendo.add(n);
            }
            con.close();
        } catch (Exception e) {
        }
        return Nintendo;
    }

    public List ListarPhones() {
        List<Dispositivo> Phones = new ArrayList();
        String sql = "SELECT * FROM dispositivo WHERE Tipo='phone'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Dispositivo ph = new Dispositivo();
                ph.setIdDispositivo(rs.getInt(1));
                ph.setModelo(rs.getString(2));
                ph.setMarca(rs.getString(3));
                ph.setTipo(rs.getString(4));
                ph.setImagen(rs.getString(5));

                Phones.add(ph);
            }
            con.close();
        } catch (Exception e) {
        }
        return Phones;
    }
}
