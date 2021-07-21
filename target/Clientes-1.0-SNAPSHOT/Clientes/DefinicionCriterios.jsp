<%@page import="Utilidades.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <script>
            const activar=()=>{
           document.getElementById("inputInactividad").disabled=(document.getElementById("inputInactividad").disabled)? false:true;
            }
        </script>
    </head>
    <body>
        <form action="Modulos_control?m=cli&op=tab" method="post" >
            <br>    
            <h3 style="text-align: center ">Definicion de Criterios de Fidelizacion</h3>
            <h6 style="text-align: center ">Elija los parametros para escoger a beneficiarios</h6>
            <br>  
            <div class="container">
                <div class="row justify-content-center p-3">
                    <div class="col-md-4">
                        <label for="" class="form-label">Minimo tiempo como cliente</label>
                        <div class="input-group has-validation">
                            <span class="input-group-text" id="inputGroupPrepend">Años</span>
                            <input type="number" class="form-control" id="inputTiempo" name="inputTiempo" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                                Please choose a username.
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row justify-content-center p-3">
                    
                    <div class="col-md-4">
                        <input type="checkbox" onchange="activar()" >
                        <label for="" class="form-label">Maximo periodo de inactividad</label>
                        <div class="input-group has-validation">
                            <span class="input-group-text" id="inputGroupPrepend">Meses</span>
                            <input type="number" class="form-control" name="inputInactividad" id="inputInactividad" aria-describedby="inputGroupPrepend" disabled>
                            <div class="invalid-feedback">
                                Please choose a username.
                            </div>
                        </div>
                    </div>

                </div>

               <div class="row justify-content-center p-3">
                <button type="submit" class="col-4 btn btn-primary">Buscar</button>
               </div>



            </div>
        </form>
        <script src="js/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
