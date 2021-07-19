/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import Utilidades.Database;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author camil
 */
public class Encuestas {

    private int id;
    private String comentarios;
    private String url;
    private String fecha;
    private String Cliente;

    public Encuestas() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }


    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    
  public boolean guerdar(){
  SimpleDateFormat sim= new SimpleDateFormat("dd-MM-YYYY");
  String sql="insert into ENCUESTAS(FECHA,URL,CLIENTE) values("
          + "'"+fecha+"',"
          + "'"+url+"',"
          + "'"+Cliente+"'"
          + ")";
      Database db= new Database();
      System.out.println(sql);
     if(db.Ejecutar(sql)){System.out.println("ejecutar mando true");return true;}
     else return false;
  
  
  
 
  }
}
