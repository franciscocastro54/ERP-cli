<%@page import="Utilidades.Database"%>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

        <link href="css/signin.css" ref="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
   <body>
        <div class="container-fluid">
           <div class="row justify-content-center" style="padding-bottom: 3em">
               <img src="imagenes/log-large.jpeg" class="col-3">
           </div>
            <div class="row justify-content-center align-items-center py-3">
                
                <form class="col-6 container-lg border bg-light" action="Modulos" method="post">
                   
                    <div class="row  py-3 justify-content-center" style="">
                    <h2 class="col-3 text-center fw-normal">login</h2>
                </div>
                     
                <div class="row py-3 justify-content-center align-items-center">
                    <p class="col-3 fw-bold text-rigth">Rut:</p>
                    <div class="col-6">
                    <input class="form-control " type="text" placeholder="Usuario" name="user">
                    </div>
                </div> 
                    <div class="row py-3  justify-content-center align-items-center">
                        <label class="col-3 fw-bold">Contraseņa:</label>
                        <div class="col-6">
                        <input class=" form-control" type="password" placeholder="Contraseņa" name="password">
                        </div>
                        </div>
                    <div class="row justify-content-center" style="padding-top: 3em">
                        <input class="col-4 btn btn-primary" type="submit">
                    </div>
                
                </form>
               
        </div>
    <div class=" row  justify-content-center  align-items-center " style="padding-top: 5em">
              <label class="col text-center">ERP seccion 230</label>
               <label class="col text-center">Bravo de saravia 2980</label>
                <label class="col text-center"> Rep_230@inacapmail.cl</label>
          
          </div>
            <% new Thread(){
            @Override
            public void run() {
              new Database().conectar();
            }
}.start();
            
            %>
</div></body></html>