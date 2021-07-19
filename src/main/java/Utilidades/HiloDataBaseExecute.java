/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

/**
 *
 * @author camil
 */
public class HiloDataBaseExecute extends Thread{
    Database database;
    String sql;

    public HiloDataBaseExecute(Database database, String sql) {
        this.database = database;
        this.sql = sql;
    }


  
    @Override
    public void run() {
    System.out.println("Ejecutando hilo database");
       database.Ejecutar(sql);
        
        }
    }
    
    
    
    
    
    

