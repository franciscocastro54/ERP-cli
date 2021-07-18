/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author camil
 * @
 */
public class Database {

    Connection connexion;
    public static String path;

    public boolean conectar() {
        try {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            }

            System.out.println(System.getProperty("user.dir"));

            String DB_URL = "jdbc:oracle:thin:@bddsistemas_high?TNS_ADMIN=" + path + "/wallet_BDDSISTEMASINACAP/";
            connexion = DriverManager.getConnection(DB_URL, "ICAMILOFUENTES", ".Inarenca2021.");
            connexion.setAutoCommit(true);
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }


    public ResultSet Obtener_Resultado(String sql) {
        ResultSet rs = null;
        try {

            if (conectar()) {
                Statement st = connexion.createStatement();
                rs = st.executeQuery(sql);
                return rs;

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);

        }

        return rs;

    }

    public boolean Ejecutar(String sql) {
        try {

            if (conectar()) {
                Statement st = connexion.createStatement();
                if (st.execute(sql)) {
                    System.out.println("execute true");
                    return true;
                } else {
                    System.out.println("Error execute");
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getLocalizedMessage());
            return false;
        }

        return false;
    }
    /*public boolean ExecuteCall(String sql){
     try {

            if (conectar()) {
                Statement st = connexion.createStatement();
                st.
              if(st.(sql)){System.out.println("execute true" );return true;};
              

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
                return false;
        }
    
   
    
    
    return false;
    
    
    }*/

}
