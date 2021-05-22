<html>
<body>
<main class="container-fluid">
<div class="row justify-content-center  align-items-center">
    <h2 class="col-6 text-center">Historial Cliente</h2>
</div>
    
        <form class="row justify-content-center  align-items-center">
        <label class="col-1">Rut:</label>
        <input type="text" class="col-4 ">
        <input type="submit" class="col-1" value="Buscar">
        </form>
    <div class="row">
   <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="Informacion-tab" data-bs-toggle="tab" data-bs-target="#Informacion" type="button" role="tab" aria-controls="Informacion" aria-selected="true">Informacion</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="ventas-tab" data-bs-toggle="tab" data-bs-target="#ventas" type="button" role="tab" aria-controls="ventas" aria-selected="false">ventas</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="servicio-tab" data-bs-toggle="tab" data-bs-target="#servicio" type="button" role="tab" aria-controls="servicio" aria-selected="false">Orden de servicio</button>
  </li>
   <li class="nav-item" role="presentation">
    <button class="nav-link" id="Encuestas-tab" data-bs-toggle="tab" data-bs-target="#Encuestas" type="button" role="tab" aria-controls="Encuestas" aria-selected="false">Encuestas</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="Informacion" role="tabpanel" aria-labelledby="Informacion-tab">
      <table class=" table table-striped">
          <tr><td><p>Nombre:</p></td><td>example</td></tr>
          <tr><td>Apellido:</td><td>example</td></tr>
          <tr><td>Rut:</td><td>12345678-9</td></tr>
          <tr><td>Correo electronico:</td><td>example@example.com</td></tr>
          <tr><td>Telefono:</td><td>+56912345678</td></tr>
          <tr><td>Comuna:</td><td>Santiago</td></tr>
          <tr><td>Direccion:</td><td>example 123</td></tr>
          <tr><td>Fecha de nacimiento:</td><td>22-03-2000</td></tr>
          <tr><td>Sexo:</td><td>Masculino</td></tr>
      </table>
    </div>
    <div class="tab-pane fade" id="ventas" role="tabpanel" aria-labelledby="ventas-tab">
        <table class=" table table-striped">
        <tr><td>ID</td><td>Fecha</td><td>Monto</td><td>Estado</td></tr>
        <tr><td>1234567</td><td>2/06/2020</td><td>100000</td><td>Pagado</td></tr>
        <tr><td>1234657</td><td>22/07/2020</td><td>120000</td><td>Pagado</td></tr>
        <tr><td>6320156</td><td>20/01/2021</td><td>200000</td><td>En deuda</td></tr>
        </table>
    </div>
    <div class="tab-pane fade" id="servicio" role="tabpanel" aria-labelledby="servicio-tab">
         <table class=" table table-striped">
        <tr><td>ID</td><td>Fecha</td><td>estado</td></tr>
        <tr><td>12345678</td><td>20/03/2021</td><td>Anulada</td></tr>
        </table>
        
    </div>
  
    <div class="tab-pane fade" id="Encuestas" role="tabpanel" aria-labelledby="Encuestas-tab">
        
         <table class=" table table-striped">
        <tr><td>ID</td><td>Fecha</td></tr>
        <tr><td>12345678</td><td>22/03/2021</td></tr>
   </table>
    </div>
</div>
    </div>
</main>
    
</body></html>