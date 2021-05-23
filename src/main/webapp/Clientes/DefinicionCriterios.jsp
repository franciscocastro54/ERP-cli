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
    <h3 style="text-align: center ">Definicion de Criterios de Fidelizacion</h3>
    <h6 style="text-align: center ">Elija los parametros para escoger a beneficiarios.</h6>
 <div class="container">
  <div class="row">
   <div class="col-xs-12">
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
  <label class="form-check-label" for="flexCheckChecked">
    Clientes sin deudas (vencidas/morosas)
  </label>
</div>
       
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
  <label class="form-check-label" for="flexCheckChecked">
    Cliente contesta encuesta
  </label>
</div>
 <label for="customRange1" class="form-label">Tiempo como cliente</label>
<input type="range" class="form-range" id="customRange1">    

<label for="customRange1" class="form-label">Monto gastado a la fecha</label>
<input type="range" class="form-range" id="customRange1">

<button type="button" class="btn btn-primary">Buscar</button>
 
   </div>   
  </div>
 </div>
    
 <script src="js/jquery.min.js"></script>
 <!-- Latest compiled and minified JavaScript -->
 <script src="js/bootstrap.min.js"></script>
</body>
</html>
