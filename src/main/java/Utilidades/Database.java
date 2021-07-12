/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

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
 */
public class Database {

    Connection connexion;

    public boolean conectar() {

        try {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            }
            String DB_URL="jdbc:oracle:thin:@(description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.us-ashburn-1.oraclecloud.com))(connect_data=(service_name=szgtnnarpl3vuo5_bddsistemas_high.adb.oraclecloud.com))(security=(ssl_server_cert_dn=\"CN=adwc.uscom-east-1.oraclecloud.com,OU=Oracle BMCS US,O=Oracle Corporation,L=Redwood City,ST=California,C=US\")))";
            connexion = DriverManager.getConnection(DB_URL, "ICAMILOFUENTES", ".Inarenca2021.");

            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
               return false; 
        }

    }

    public boolean Validar_usuario(String user, String password) {
        try {
            if (conectar()) {
                Statement st = connexion.createStatement();
                ResultSet rs = st.executeQuery("select * from usuario where rut='" + user + "' and password='" + password + "'");
                if (rs.next()) {
                    return true;
                } else {
                    return false;
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }

        return false;
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
    public boolean Ejecutar(String sql){
    try {

            if (conectar()) {
                Statement st = connexion.createStatement();
              if(st.execute(sql)){System.out.println("execute true" );return true;};
              

            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
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
