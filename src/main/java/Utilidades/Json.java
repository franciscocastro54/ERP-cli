/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
/**
 *
 * @author camil
 */
public class Json {
   private URL url;

    public URL getUrl() {
        return url;
    }

    public void setUrl(URL url) {
        this.url = url;
    }

    public Json(String url) {
       try {
           this.url = new URL(url);
       } catch (MalformedURLException ex) {
           Logger.getLogger(Json.class.getName()).log(Level.SEVERE, null, ex);
       }
    }

    public Json(URL url) {
        this.url = url;
    }

  

   
    
    private String conectar(){
 
        
         try {
             HttpURLConnection miCon = (HttpURLConnection) url.openConnection();
             miCon.connect();
             InputStream is = miCon.getInputStream();
             String json= new Scanner(is,"UTF-8").useDelimiter("\\Z").next();
             return json;
         } catch (IOException ex) {
             Logger.getLogger(Json.class.getName()).log(Level.SEVERE, null, ex);
         }
     
 
 return null;
    }
    public ArrayList<String> obtener( String campo){
    /*  ArrayList<String> list= new ArrayList<>();
      final JSONObject text = new JSONObject( new Conexion().obtenerPagina());
      final JSONArray arreglo = text.getJSONArray("items");
        for (int i = 0; i < arreglo.length(); i++) {
       JSONObject comuna = arreglo.getJSONObject(i);
       list.add(comuna.getString("nombre"));
        }
        request.setAttribute("comunas", list);
      request.getRequestDispatcher("/index.jsp").forward(request, response);*/
    ArrayList<String> list= new ArrayList<>();
    
      JSONObject text = new JSONObject(conectar());
      JSONArray arreglo = text.getJSONArray("items");
        for (int i = 0; i < arreglo.length(); i++) {
       JSONObject comuna = arreglo.getJSONObject(i);
       list.add(comuna.getString(campo));
        }
 
    
    return list;
    }
    
}
