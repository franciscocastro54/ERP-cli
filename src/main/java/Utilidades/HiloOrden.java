/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import beans.Orden_de_servicio;

/**
 *
 * @author camil
 */
public class HiloOrden extends Thread {
    Orden_de_servicio orden;
    String action;
    
    public HiloOrden(Orden_de_servicio orden, String action) {
        this.orden = orden;
        this.action = action;
    }
  
    

    @Override
    public void run() {
       switch(action){
       
           case "guardar":
               
               System.out.println("Orden guardada");
               orden.guardar();
               break;
            
       
       default:
           break;
       }
    }
}
