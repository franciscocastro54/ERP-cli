/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import beans.Cliente;

/**
 *
 * @author camil
 */
public class HiloCliente extends Thread{
    Cliente cliente;
    String action;

    public HiloCliente(Cliente cliente, String action) {
        this.cliente = cliente;
        this.action = action;
    }
  
    

    @Override
    public void run() {
       switch(action){
       
           case "guardar":
               
               System.out.println("Guardado cliente");
               cliente.guardar();
               break;
            case "modificar":
                System.out.println("Modificando cliente");
                cliente.modificar();
               break;
       
       default:
           break;
       }
    
    }
    
    
    
    
    
    
    
    
}
