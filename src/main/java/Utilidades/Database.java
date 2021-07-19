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

   private Connection connexion;
    public static String path;

    public Connection getConnexion() {
        return connexion;
    }

    public void setConnexion(Connection connexion) {
        this.connexion = connexion;
    }

    public boolean conectar() {
        try {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            }

            System.out.println(System.getProperty("user.dir"));
System.out.println(path);
            String DB_URL = "jdbc:oracle:thin:@bddsistemas_high?TNS_ADMIN=" + path + "/wallet_BDDSISTEMASINACAP/";
            connexion =DriverManager.getConnection(DB_URL, "ICAMILOFUENTES", ".Inarenca2021.");
            connexion.setAutoCommit(true);
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return conectar();
        }
    }


    public ResultSet Obtener_Resultado(String sql) {
        ResultSet rs = null;
        try {

            if (conectar()) {
                Statement st = connexion.createStatement();    
                System.out.println("obteniendo resultado");
                rs = st.executeQuery(sql);
                
                return rs;

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
return Obtener_Resultado(sql);
        }

        return rs;

    }

    public boolean Ejecutar(String sql) {
        try {
            if (conectar()) {
                Statement st = connexion.createStatement();
                if (st.execute(sql)) {
                    System.out.println("execute true");
                     connexion.close();
                    return true;
                } else {
                    System.out.println("Error execute");
                     connexion.close();
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getLocalizedMessage());
          
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
