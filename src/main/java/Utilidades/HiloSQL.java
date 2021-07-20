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
public class HiloSQL extends Thread{
    String sql;

    public HiloSQL(String sql) {
        this.sql = sql;
    }

    @Override
    public void run() {
   new Database().Ejecutar(sql);
  }
    
    
    
    
}
