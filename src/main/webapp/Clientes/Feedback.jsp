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
    <h3 style="text-align: center ">Encuesta de satisfacción</h3>
 <div class="container">
  <div class="row">
   <div class="col-xs-12">
       
       
       <form>
  <div class="form-row align-items-center">
       <div class="row">
    <div class="col-10">
      <label class="sr-only" for="inlineFormInput">URL encuesta</label>
      <input type="text"  name="inputfeedbackurl" id="1" class="form-control mb-2"  placeholder="https://docs.google.com/forms/d/e/1FAIpQLSdnXWERsV01176JleG0-T_vJJKZIiaMCj_RBg6ApYHHX5cTwg/viewform?usp=sf_link">
    </div>
    <div class="col-2">
        <br>
      <button type="submit" name="inputfeedbackenviar" id="2" class="btn btn-primary mb-2">Enviar</button>
    </div>
  </div>
  </div>
</form>
 
       
       
   <table class="table table-hover table-striped table-sm">
  <thead>
    <tr class="table-active">
      <th scope="col">#</th>
      <th scope="col">RUT</th>
      <th scope="col">ID Encuesta</th>
      <th scope="col">URL</th>
      <th scope="col">Enviar</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>20576454-4</td>
      <td>00000001</td>
      <td>https://docs.google.com/forms/d/e/1FAIpQLSdnXWERsV01176JleG0-T_vJJKZIiaMCj_RBg6ApYHHX5cTwg/viewform?usp=sf_link</td>
            <td><input class="form-check-input" type="checkbox" name="inputfeedbackcheck" id="3" value=""  checked></td>
    </tr>
    
  </tbody>
</table>
     
       <br>
   </div>   
  </div>
 </div>
    
 <script src="js/jquery.min.js"></script>
 <!-- Latest compiled and minified JavaScript -->
 <script src="js/bootstrap.min.js"></script>
</body>
</html>
