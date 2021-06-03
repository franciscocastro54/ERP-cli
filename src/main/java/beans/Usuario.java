/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author camil
 */
public class Usuario {
   String rut;
   String[] privilegios;

    public Usuario() {
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String[] getPrivilegios() {
        return privilegios;
    }

    public void setPrivilegios(String[] privilegios) {
        this.privilegios = privilegios;
    }
  
   
   
}
