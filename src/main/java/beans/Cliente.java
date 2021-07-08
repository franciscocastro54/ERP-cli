/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Date;

/**
 *
 * @author camil
 */
public abstract class Cliente {

    private String rut;
    private String nombre;
    private String mail;
    private String direccion;
    private String Comuna;
    private String estado;
    private String telefono;
    private Date fecha_registro;
    private Boleta[] boletas;
    private Deuda[] deudas;
    private Orden_de_servicio[] orden_de_servicio;
    private Encuestas[] encuestas;
    
    public Cliente() {
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getComuna() {
        return Comuna;
    }

    public void setComuna(String Comuna) {
        this.Comuna = Comuna;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Date getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public Boleta[] getBoletas() {
        return boletas;
    }

    public void setBoletas(Boleta[] boletas) {
        this.boletas = boletas;
    }

    public Deuda[] getDeudas() {
        return deudas;
    }

    public void setDeudas(Deuda[] deudas) {
        this.deudas = deudas;
    }

    public Orden_de_servicio[] getOrden_de_servicio() {
        return orden_de_servicio;
    }

    public void setOrden_de_servicio(Orden_de_servicio[] orden_de_servicio) {
        this.orden_de_servicio = orden_de_servicio;
    }

    public Encuestas[] getEncuestas() {
        return encuestas;
    }

    public void setEncuestas(Encuestas[] encuestas) {
        this.encuestas = encuestas;
    }
}
