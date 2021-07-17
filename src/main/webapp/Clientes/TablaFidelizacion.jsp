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
    <div class="container">
        <div class="row align-items-center py-2">
    <h3 style="text-align: center ">Beneficiarios</h3>
        </div>
  <div class="row">
   <div class="col-xs-12">
   <table class="table table-hover table-sm">

  <thead>
    <tr class="table-active">
      <th scope="col-1">#</th>
      <th scope="col-3">RUT</th>
      <th scope="col-2">Nombre</th>
      <th scope="col-2">Email</th>
      <th scope="col-2">ID Encuesta</th>
      <th scope="col-2">Años como cliente</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1
        <label class="form-check-label" for="flexCheckChecked"></label>
      </th>
      <td name="rut">20576454-4</td>
      <td name="nombre">Juanin</td>
      <td name="email">juanin@gmail.com</td>
      <td name="ID">00000001</td>
      <td>1</td>
    </tr>
    
    <tr>
      <th scope="row">2
        <label class="form-check-label" for="flexCheckChecked"></label>
      </th>
      <td>15675465-9</td>
      <td>Juanina</td>
      <td>juanina@gmail.com</td>
      <td>00000002</td>
      <td>1</td>
    </tr>
    
    <tr>
      <th scope="row">3
        <label class="form-check-label" for="flexCheckChecked"></label>
      </th>
      <td name="rut">20576454-4</td>
      <td name="nombre">Juanin</td>
      <td name="email">juanin@gmail.com</td>
      <td name="ID">00000003</td>
      <td>1</td>
    </tr>   
   
  </tbody>
</table>
      </div>
  </div>
        <div class="row justify-content-center align-self-center py-2">
       
           
            <button type="submit" class="btn btn-primary col-2">Enviar correo</button>
     
        </div>
   </div>   
 
 </div>
    
 <script src="js/jquery.min.js"></script>
 <!-- Latest compiled and minified JavaScript -->
 <script src="js/bootstrap.min.js"></script>
</body>
</html>