<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    </head>
    <body>
    <br>    
    <h3 style="text-align: center ">Definicion de Criterios de Fidelizacion</h3>
    <h6 style="text-align: center ">Elija los parametros para escoger a beneficiarios</h6>
    <br>  
 <div class="container">
  <div class="row">
   <div class="col text-center">
          
<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
  <option selected>Años como cliente:</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>
     
<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
  <option selected>Estado de deuda:</option>
  <option value="1">Pagada</option>
  <option value="2">Pendiente</option>
  <option value="3">Vencida</option>
  <option value="4">Morosa</option>
</select>
       
       <br><br>
       <a href="Modulos_control?m=cli&op=tab"><button type="button" class="btn btn-primary">Buscar</button></a>
       <br><br>
 
   </div>   
  </div>
 </div>
    
 <script src="js/jquery.min.js"></script>
 <!-- Latest compiled and minified JavaScript -->
 <script src="js/bootstrap.min.js"></script>
</body>
</html>
