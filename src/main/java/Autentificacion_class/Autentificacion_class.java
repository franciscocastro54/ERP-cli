/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Autentificacion_class;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author camil
 */
public class Autentificacion_class {
    
    public void validar(){
     FirebaseOptions options;
        try {
            options = FirebaseOptions.builder()
                    .setCredentials(GoogleCredentials.getApplicationDefault())
                    .setDatabaseUrl("https://clientes-5182d.firebaseio.com/")
                    .build();
             FirebaseApp app= FirebaseApp.initializeApp(options);
        } catch (IOException ex) {
            Logger.getLogger(Autentificacion_class.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    
    
    }
}
