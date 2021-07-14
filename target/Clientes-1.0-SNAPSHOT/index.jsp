<%@page import="Utilidades.Database"%>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

        <link href="css/signin.css" ref="stylesheet" type="text/css">
        <title>JSP Page</title>
        <!--aqui va firebase-->
        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-app.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use
             https://firebase.google.com/docs/web/setup#available-libraries -->
        <script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-auth.js"></script>

        <script>
            // Your web app's Firebase configuration
            // For Firebase JS SDK v7.20.0 and later, measurementId is optional
            var firebaseConfig = {
                apiKey: "AIzaSyCGeHh1zBMiPpgqwLFbkm31hHbN9nVWmX8",
                authDomain: "clientes-5182d.firebaseapp.com",
                projectId: "clientes-5182d",
                storageBucket: "clientes-5182d.appspot.com",
                messagingSenderId: "716789694428",
                appId: "1:716789694428:web:0e670c95fa949aa73a1919",
                measurementId: "G-ZVSR3E0JNT"
            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
            const auth = firebase.auth();
            const validar = () => {
                const email = document.querySelector('#Direccion_email').value
                const password = document.querySelector('#Password_usuario').value
                console.log('validando')
                auth.signInWithEmailAndPassword(email, password).then((userCredential => {
                    console.log('validado')
                    document.location.href = "Modulos_control"
                    const re =request.headers
                    console.log(re)

                }))
               auth.signInWithEmailAndPassword(email, password).catch(()=>{
                    alert("ERROR DE VALIDACION")
                    
                    
                })

            }
        </script>
        <!--aqui termina firebase-->
    </head>
    <body>
        <div class="container-fluid">
            
            <div class="row justify-content-center " >
               <div class="col-md-12 container-fluid" style="background-color: cornflowerblue; color: #FFF;">
                <img src="imagenes/log-large.jpeg" class="rounded mx-auto d-block">
               </div>
            </div>
            <div class="row justify-content-center align-items-center py-3">

                <div class="col-6 container-lg border bg-light"  >
               
                <div class="row  py-3 justify-content-center" style="">
                    <h2 class="col-3 text-center fw-normal">login</h2>
                </div>

                <div class="row py-3 justify-content-center align-items-center">
                    <p class="col-3 fw-bold text-rigth">Correo:</p>
                    <div class="col-6">
                        <input id="Direccion_email" class="form-control " type="email" placeholder="Usuario" name="user">
                    </div>
                </div> 
                <div class="row py-3  justify-content-center align-items-center">
                    <label class="col-3 fw-bold">Contraseña:</label>
                    <div class="col-6">
                        <input id="Password_usuario" class=" form-control" type="password" placeholder="Contraseña" name="password">
                    </div>
                </div>
                <div class="row justify-content-center" style="padding-top: 3em; padding-bottom: 2em">
                    <input class="col-4 btn btn-primary" type="submit" onclick="validar()" value="Entrar">
            
                </div>

                </div>

            </div>
            <%@ include file="componentes/bottom_bar.jsp" %>  
            <% new Thread() {
                    @Override
                    public void run() {
                        new Database().conectar();
                    }
                }.start();

            %>
        </div></body></html>