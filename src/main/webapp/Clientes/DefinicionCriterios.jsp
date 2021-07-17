<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    </head>
    <body><br>
    <h3 style="text-align: center ">Definicion de Criterios de Fidelizacion</h3>
    <h6 style="text-align: center ">Elija los parametros para escoger a beneficiarios.</h6>
    <br>
 <div class="container">
  <div class="row">
   <div class="col text-center">
       
<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Años como cliente
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">1</a>
    <a class="dropdown-item" href="#">2</a>
    <a class="dropdown-item" href="#">3</a>
    <a class="dropdown-item" href="#">4</a>
    <a class="dropdown-item" href="#">5</a>
    <a class="dropdown-item" href="#">6</a>
    <a class="dropdown-item" href="#">7</a>
    <a class="dropdown-item" href="#">8</a>
    <a class="dropdown-item" href="#">9</a>
    <a class="dropdown-item" href="#">10</a>
  </div>
</div>
       <br><br>
       <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Estado deuda
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Sin deuda vigente</a>
    <a class="dropdown-item" href="#">Con deuda vigente</a>

  </div>
</div>
       <br><br><br><br>
<a href="Modulos_control?m=cli&op=tab"><button type="button" class="btn btn-primary">Buscar</button></a>
 
   </div>   
  </div>
 </div>
    
 <script src="js/jquery.min.js"></script>
 <!-- Latest compiled and minified JavaScript -->
 <script src="js/bootstrap.min.js"></script>
</body>
</html>
