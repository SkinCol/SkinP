/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Alejandro
 */
public class Conexion {
    Connection con; 
    String url = "jdbc:mysql://localhost:3306/skincol";
    String user = "root";
    String password = "";
    public Connection getConnection(){
        try {
            Class.forName("con.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
        }
        return con;
    }
}
