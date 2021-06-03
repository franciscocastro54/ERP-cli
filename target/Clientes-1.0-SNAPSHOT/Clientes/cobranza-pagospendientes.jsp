
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <form class="container-fluid">
        <div class="row justify-content-center">         
            <h2 class="col-6 text-center">Clientes con pagos pendientes</h2>
        </div>
        
<div class="row justify-content-center align-items-center">
    <div class="col-2">
 <label class="">Tipo de cliente(empresa,persona)</label>
 <br> </br> 
    </div>
    <div class="col-6">
   <select class="form-select" aria-label="Default select example">
  <option selected>Tipo Cliente</option>
  <option value="1">Persona</option>
  <option value="2">Empresa</option>
  <input type="button" class="col-6" value="Buscar">  
   </select>
    </div>
    <br></br>
            
        <div class="row justify-content-center  align-items-center">  
    <table class="table table-hover">
        <div class="row justify-content-center  align-items-center"> 
        <div class="col-6">
            
    <div class="row justify-content-center  align-items-center"> 
        
  <thead>
      <div class="col-6">
    <tr class="table-light">
      <th scope="col">#</th>
      <th scope="col">RUT</th>
      <th scope="col">Nombre</th>
      <th scope="col">N° de deudas</th>
      <th scope="col">Fecha de deuda</th>
      <div class="row justify-content-center  align-items-center">  
    </tr>
  </thead>
  <tbody>
      <div class="col-6">
    <tr>
      <th scope="row">1</th>
      <td>19526873-5</td>
      <td>Pepe</td>
      <td>1</td>
      <td>12/12/2020</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>15123456-7</td>
      <td>Juan Torres</td>
      <td>8</td>
      <td>20/02/1999</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>19532741-2</td>
      <td>Benjamin</td>
      <td>5</td>
      <td>15/02/1992</td>      
    </tr>
    </div> 
  </tbody>
</table>