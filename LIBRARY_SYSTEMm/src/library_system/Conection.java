/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author cs
 */
public class Conection {
    public static Connection getConn() throws SQLException {
        //Class.forName("com.mysql.jdbc.Driver");//optional in the new version of java(1.4 later)
        String dbUrl = "jdbc:mysql://localhost:3306/Library";
        String dbUser = "root";
        String dbPass = "root12";
        return DriverManager.getConnection(dbUrl, dbUser, dbPass);
    }
    
    
    
    
    
    
}
