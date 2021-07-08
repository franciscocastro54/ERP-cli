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
    
    
}
