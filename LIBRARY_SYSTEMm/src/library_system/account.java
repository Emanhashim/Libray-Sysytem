/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library_system;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author cs
 */
public class account {
    
    
     public boolean logintolibrary(String username, String pwd) {
        boolean userExist = false;
        String sql = "SELECT * FROM useraccount WHERE UserName = '" + username + "' AND Password = '" + pwd + "'";
        try {
            Connection conn = Conection.getConn();
            Statement stmt = conn.createStatement();
            ResultSet rst = stmt.executeQuery(sql);
            if (rst != null) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return userExist;
    }
}

    
    
    
    

