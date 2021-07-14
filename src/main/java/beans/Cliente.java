/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Date;
import Utilidades.Database;
import beans.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author camil
 */
public class Cliente {

    private String rut;
    private String nombre;
    private String mail;
    private String direccion;
    private String Comuna;
    private String estado;
    private String telefono;
    private Date fecha_registro;
    private String tipo_cliente;
    private String rubro;
    private String nombre_representante;
    private String rut_representante;
    private Date fecha_nacimiento;
    private String sexo;

    private ArrayList<Boleta> boletas;
    private ArrayList<Deuda> deudas;
    private ArrayList<Orden_de_servicio> orden_de_servicio;
    private ArrayList<Encuestas> encuestas;
    private Database base_datos;
    private ResultSet info;

    public Cliente() {
        base_datos = new Database();
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

    public ArrayList<Boleta> getBoletas() {
        return boletas;
    }

    public void setBoletas(ArrayList<Boleta> boletas) {
        this.boletas = boletas;
    }

    public ArrayList<Deuda> getDeudas() {
        return deudas;
    }

    public void setDeudas(ArrayList<Deuda> deudas) {
        this.deudas = deudas;
    }

    public ArrayList<Orden_de_servicio> getOrden_de_servicio() {
        return orden_de_servicio;
    }

    public void setOrden_de_servicio(ArrayList<Orden_de_servicio> orden_de_servicio) {
        this.orden_de_servicio = orden_de_servicio;
    }

    public ArrayList<Encuestas> getEncuestas() {
        return encuestas;
    }

    public void setEncuestas(ArrayList<Encuestas> encuestas) {
        this.encuestas = encuestas;
    }

    public Database getBase_datos() {
        return base_datos;
    }

    public void setBase_datos(Database base_datos) {
        this.base_datos = base_datos;
    }

    public ResultSet getInfo() {
        return info;
    }

    public void setInfo(ResultSet info) {
        this.info = info;
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

    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public boolean buscar(String rut) {
        String sql = "select * from VISTA_CLIENTE where rut='" + rut + "'";
        info = base_datos.Obtener_Resultado(sql);

        try {
            if (info.next()) {
                this.rut = info.getString("RUT");
                nombre = info.getString("NOMBRE");
                mail = info.getString("EMAIL");
                direccion = info.getString("DIRECCION");
                Comuna = info.getString("COMUNA");
                estado = info.getString("ESTADO");
                telefono = info.getString("TELEFONO");
                fecha_registro = info.getDate("FECHA_INCRIPCION");
                tipo_cliente = info.getString("tipo_cliente");
                if (info.getString("TIPO_CLIENTE").equals("EMPRESA")) {
                    rubro = info.getString("RUBRO");
                    nombre_representante = info.getString("REPRESENTANTE");
                    rut_representante = info.getString("RUT_REPRESENTANTE");
                } else if (info.getString("TIPO_CLIENTE").equals("NATURAL")) {
                    fecha_nacimiento = info.getDate("FECHA_NACIMIENTO");
                    sexo = info.getString("SEXO");
                }
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean buscar_orden_servicio(int idOrden) {
        try {
            boolean flag=(rut!=null);
            String sql = (flag)?
                    "SELECT * FROM VISTA_ORDEN_SERVICIO where RUT_CLIENTE='" + rut + "'"
                    :"SELECT * FROM VISTA_ORDEN_SERVICIO ";
            if (idOrden != -1) {
                sql = (flag)?
                        sql.concat(" and id=" + idOrden)
                      :sql.concat(" where  id=" + idOrden);
            }
            ResultSet ordenes = base_datos.Obtener_Resultado(sql);
            orden_de_servicio = new ArrayList<Orden_de_servicio>();
            while (ordenes.next()) {
                Orden_de_servicio orden = new Orden_de_servicio();
                orden.setIdOrden(ordenes.getInt("id"));
                orden.setDescripcion(ordenes.getString("DESCRIPCION"));
                orden.setFecha(ordenes.getDate("FECHA"));
                orden.setTipo(ordenes.getString("TIPO_SERVICIO"));
                orden.setCliente(ordenes.getString("CLIENTE"));
                orden.setEstado(ordenes.getString("ESTADO"));
                orden_de_servicio.add(orden);
            }
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean buscar_Encuestas(int idOrden) {
        try {
             boolean flag=(rut!=null);
            String sql =(flag)?
                    "SELECT * FROM VISTA_ENCUESTAS where CLIENTE='" + rut + "'"
                    :"SELECT * FROM VISTA_ENCUESTAS";
            if (idOrden != -1) {
                sql = (flag)?
                        sql.concat(" and id=" + idOrden)
                     :sql.concat(" where  id=" + idOrden);
            }
            ResultSet encuestasAux = base_datos.Obtener_Resultado(sql);
            encuestas = new ArrayList<Encuestas>();

            while (encuestasAux.next()) {

                Encuestas encuesta = new Encuestas();
                encuesta.setId(encuestasAux.getInt("ID"));
                encuesta.setFecha(encuestasAux.getDate("FECHA"));
                encuesta.setUrl(encuestasAux.getString("URL"));
                encuesta.setCliente(encuestasAux.getString("CLIENTE"));
                encuestas.add(encuesta);
            }
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean buscar_Deudas(int idOrden) {
        try {
             boolean flag=(rut!=null);
            String sql = (flag)?"SELECT * FROM VISTA_DEUDORES where CLIENTE='" + rut + "'"
                    :"SELECT * FROM VISTA_DEUDORES ";
            if (idOrden != -1) {
                sql = (flag)?sql.concat(" and id=" + idOrden)
                       :sql.concat(" where  id=" + idOrden);
            }
            ResultSet deudasaux = base_datos.Obtener_Resultado(sql);
            this.deudas = new ArrayList<Deuda>();
            while (deudasaux.next()) {
                Deuda deuda = new Deuda();
                deuda.setId(deudasaux.getInt("ID"));
                deuda.setFecha(deudasaux.getDate("FECHA"));
                deuda.setMonto(deudasaux.getInt("MONTO"));
                deuda.setCliente(deudasaux.getString("CLIENTE"));
                deuda.setEstado(deudasaux.getString("ESTADO"));
                deudas.add(deuda);
            }
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean buscar_Boletas(int idOrden) {
        try {boolean flag=(rut!=null);
            String sql = (flag)?"SELECT * FROM VISTA_BOLETAS where CLIENTE='" + rut + "'"
                    :"SELECT * FROM VISTA_BOLETAS";
            if (idOrden != -1) {
                sql = (flag)?sql.concat(" and id=" + idOrden)
                        :sql.concat(" where  id=" + idOrden);
            }

            ResultSet boletasAux = base_datos.Obtener_Resultado(sql);
            boletas = new ArrayList<Boleta>();
            while (boletasAux.next()) {
                Boleta boleta = new Boleta();
                boleta.setUrl(boletasAux.getString("URL"));
                boleta.setFecha(boletasAux.getDate("FECHA"));
                boleta.setMonto(boletasAux.getInt("MONTO"));
                boleta.setId(boletasAux.getInt("ID"));
                boleta.setCliente(boletasAux.getString("CLIENTE"));
                boletas.add(boleta);
            }
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean guardar() {
        String sqlEmpresa = null;
        String sql1 = "insert into CLIENTE(RUT,NOMBRE,DIRECCION,EMAIL,TELEFONO,FECHA_INCRIPCION,"
                + "TIPO_CLIENTE,COMUNA,ESTADO,";
        if (tipo_cliente.equals("EMPRESA")) {
            sql1 = sql1.concat("RUBRO)");
        } else if (tipo_cliente.equals("NATURAL")) {
            sql1 = sql1.concat("FECHA_NACIMIENTO,SEXO)");
        }

        String sql2 = "values("
                + "'" + rut + "',"
                + "'" + nombre + "',"
                + "'" + direccion + "',"
                + "'" + mail + "',"
                + "'" + telefono + "',"
                + "SYSDATE,"
                + "F_TIPO_CLIENTE('" + tipo_cliente + "'),"
                + "F_COMUNA('" + Comuna + "'),"
                + "F_ESTADO_CLIENTE('" + estado + "'),";

        if (tipo_cliente.equals("EMPRESA")) {
            sql2 = sql2.concat("F_RUBRO('" + rubro + "'))");

        } else if (tipo_cliente.equals("NATURAL")) {
            SimpleDateFormat sim = new SimpleDateFormat("dd-MM-YYYY");
            sql2 = sql2.concat("'" + sim.format(fecha_nacimiento) + "',"
                    + "F_SEXO('" + sexo + "'))");
        }

        String sqlA = sql1 + sql2;
         String   sqlB = "insert into REPRESENTANTE(RUT,NOMBRE) values("
                        + "'" + rut_representante + "',"
                        + "'" + nombre_representante + "'"
                        + ")";
          String      sqlC = "insert into REPRESENTANTE_CLIENTE(RUT_CLIENTE,RUT_REPRESENTANTE) values("
                            + "'" + rut + "',"
                            + "'" + rut_representante + "'"
                            + ")";
        System.out.println(sqlA);
        if(tipo_cliente.equals("EMPRESA")){
        if (base_datos.Ejecutar(sqlA)&base_datos.Ejecutar(sqlB)&base_datos.Ejecutar(sqlC)) {

             return true;
                }
        } else if(base_datos.Ejecutar(sqlA)) return true;
return false;
         
        

      
    }

    public boolean modificar() {

        String sql = "update CLIENTE set "
                + "NOMBRE='" + nombre + "',"
                + "DIRECCION='" + direccion + "',"
                + "EMAIL='" + mail + "',"
                + "TELEFONO='" + telefono + "',"
                + "TIPO_CLIENTE=F_TIPO_CLIENTE('" + tipo_cliente + "'),"
                + "COMUNA=F_COMUNA('" + Comuna + "'),"
                + "ESTADO=F_ESTADO_CLIENTE('" + estado + "'),";
         String   sqlB = "insert into REPRESENTANTE(RUT,NOMBRE) values("
                        + "'" + rut_representante + "',"
                        + "'" + nombre_representante + "'"
                        + ")";
         String sqlC = "update REPRESENTANTE_CLIENTE set RUT_REPRESENTANTE='"+rut_representante+"' where RUT_CLIENTE='"+rut+"'";
        if (tipo_cliente.equals("EMPRESA")) {
            sql = sql.concat("RUBRO=F_RUBRO('" + rubro + "')");
         
        } else if (tipo_cliente.equals("NATURAL")) {
            sql = sql.concat("FECHA_NACIMIENTO='" + fecha_nacimiento.toString() + "',"
                    + "SEXO=F_SEXO('" + sexo + "')");
        }
        sql = sql.concat(" where rut='" + rut + "'");

      if (tipo_cliente.equals("EMPRESA")) { if (base_datos.Ejecutar(sql)&base_datos.Ejecutar(sqlB)&base_datos.Ejecutar(sqlC))  return true;
        }else{
          if (base_datos.Ejecutar(sql))  return true;
      }

        return false;
    }

}
