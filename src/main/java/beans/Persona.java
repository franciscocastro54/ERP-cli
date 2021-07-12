/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Date;
import beans.Cliente;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author camil
 */
public class Persona extends Cliente{
   String apellido;
    Date fecha_nacimiento;

    public Persona() {
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }
    
    public boolean buscar(String rut) {
       if(super.buscar(rut)){
           try {
               fecha_nacimiento=getInfo().getDate("FECHA_NACIMIENTO");
             
               return true;
           } catch (SQLException ex) {
               Logger.getLogger(Empresa.class.getName()).log(Level.SEVERE, null, ex);
           }
       }  return false; 
      
      
           
    
    
    }
}
