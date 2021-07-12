/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;
import beans.Cliente;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author camil
 */
public class Empresa extends Cliente {
    String rubro;
    String nombre_representante;
    String rut_representante;

    public Empresa() {
    }

    public String getRubro() {
        return rubro;
    }

    public void setRubro(String rubro) {
        this.rubro = rubro;
    }

    public String getNombre_representante() {
        return nombre_representante;
    }

    public void setNombre_representante(String nombre_representante) {
        this.nombre_representante = nombre_representante;
    }

    public String getRut_representante() {
        return rut_representante;
    }

    public void setRut_representante(String rut_representante) {
        this.rut_representante = rut_representante;
    }

    @Override
    public boolean buscar(String rut) {
       if(super.buscar(rut)){
           try {
               rubro=getInfo().getString("RUBRO");
               nombre_representante=getInfo().getString("nombre_representante");
               rut_representante=getInfo().getString("rut_representante");
               return true;
           } catch (SQLException ex) {
               Logger.getLogger(Empresa.class.getName()).log(Level.SEVERE, null, ex);
           }
       }  return false; 
      
      
           
    
    
    }
    
    
}
