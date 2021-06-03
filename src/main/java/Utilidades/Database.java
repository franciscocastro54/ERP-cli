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
    
    
    
    
    public boolean conectar(){
    
    
        try {
            connexion= DriverManager.getConnection("jdbc:oracle:thin:@bddsistemas_high?TNS_ADMIN=C:/Users/camil/Downloads/inacap/wallet_BDDSISTEMASINACAP/","ICAMILOFUENTES",".Inarenca2021.");
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        
        return false;
    } 
    
    public boolean Validar_usuario(){
     try {
         if(conectar()){
             Statement st = connexion.createStatement();
             ResultSet rs = st.executeQuery("");
              if(rs.next())
            return true;
                  
        return true;
         
         
         }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    
   return false;
    }
 
   
    
}
