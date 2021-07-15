<%@page import="beans.Cliente"%>
<html>
    <body>
        <main class="container-fluid">
            <div class="row justify-content-center  align-items-center py-2">
                <h2 class="col-6 text-center">Historial Cliente</h2>
            </div>

            <form class="row justify-content-center  align-items-center py-1" action="Modulos_control?m=cli&op=His" method="post" >
                <label class="col-1"><strong>Rut:</strong></label>
                <input type="text" class="col-4 "/>
                <input type="submit" class="col-1 btn btn-primary" value="Buscar" >
            </form>
            <div class="row py-1">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="Informacion-tab" data-bs-toggle="tab" data-bs-target="#Informacion" type="button" role="tab" aria-controls="Informacion" aria-selected="true">Información</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="ventas-tab" data-bs-toggle="tab" data-bs-target="#ventas" type="button" role="tab" aria-controls="ventas" aria-selected="false">Ventas</button>
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
                            <tr><td><strong>Nombre Completo:</strong></p></td><td>Example</td></tr>
                            <tr><td><strong>Rut:</strong></td><td>12345678-9</td></tr>
                            <tr><td><strong>Correo electronico:</strong></td><td>example@example.com</td></tr>
                            <tr><td><strong>Teléfono:</strong></td><td>+56912345678</td></tr>
                            <tr><td><strong>Comuna:</strong></td><td>Santiago</td></tr>
                            <tr><td><strong>Direccion:</strong></td><td>example 123</td></tr>
                            <tr><td><strong>Fecha de nacimiento:</strong></td><td>22-03-2000</td></tr>
                            <tr><td><strong>Sexo:</strong></td><td>Masculino</td></tr>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="ventas" role="tabpanel" aria-labelledby="ventas-tab">
                        <table class=" table table-striped">
                            <thead>   <tr><th>ID</th><th>Fecha</th><th>Monto</th><th>Estado</th></tr></thead>
                            <tbody>
                            <tr><td>1234567</td><td>2/06/2020</td><td>100000</td><td>Pagado</td></tr>
                            <tr><td>1234657</td><td>22/07/2020</td><td>120000</td><td>Pagado</td></tr>
                            <tr><td>6320156</td><td>20/01/2021</td><td>200000</td><td>En deuda</td></tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="servicio" role="tabpanel" aria-labelledby="servicio-tab">
                        <table class=" table table-striped">
                            <thead><tr><th>ID</th><th>Fecha</th><th>estado</th></tr></thead>
                            <tbody>
                                <tr><td>12345678</td><td>20/03/2021</td><td>Anulada</td></tr>
                            </tbody>
                        </table>

                    </div>

                    <div class="tab-pane fade" id="Encuestas" role="tabpanel" aria-labelledby="Encuestas-tab">

                        <table class=" table table-striped">
                            <thead><tr><th>ID</th><th>Fecha</th></tr></thead>
                            <tbody>
                            <tr><td>12345678</td><td>22/03/2021</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>

    </body></html>