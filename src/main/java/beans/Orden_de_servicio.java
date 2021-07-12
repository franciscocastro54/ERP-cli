/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import Utilidades.Database;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author camil
 */
public class Orden_de_servicio {

    private int idOrden;
    private String descripcion;
    private String tipo;
    private String estado;
    private Date fecha;
    private String Cliente;

    public Orden_de_servicio() {
    }

    public int getIdOrden() {
        return idOrden;
    }

    public void setIdOrden(int idOrden) {
        this.idOrden = idOrden;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public boolean guardar() {
        SimpleDateFormat sim = new SimpleDateFormat("dd-MM-YYYY");
        String sql = "insert into ORDEN_SERVICIO(DESCRIPCION,TIPO_SERVICIO,CLIENTE,FECHA,ESTADO) values("
                + "'" + descripcion + "',"
                + "F_TIPO_SERVICIO('" + tipo + "'),"
                + "'" + Cliente + "',"
                + "'" + sim.format(fecha) + "',"
                + "F_ESTADO_ORDEN('" + estado + "')"
                + " )";
 Database db= new Database();
     if(db.Ejecutar(sql)){System.out.println("ejecutar mando true");return true;}
     else return false;
        
      
    }
public boolean anular(){
String sql = "UPDATE ORDEN_SERVICIO SET "
        + "ESTADO= F_ESTADO_ORDEN('"+estado+"')"
        + " where id="+idOrden;


Database db= new Database();
     if(db.Ejecutar(sql)){System.out.println("ejecutar mando true");return true;}
     else return false;
}
}
