<%@page import="beans.Cliente"%>
<%@page import="Utilidades.HiloCliente"%>
<html>
    <head>
        <%   Cliente oldCliente = null;
            String flag = "0";

            if (request.getParameter("Rut_usuario") != null
                    && request.getParameter("Nombre_usuario") != null
                    && request.getParameter("NombreRepresentante_usuario") != null
                    && request.getParameter("RutRepresentante_usuario") != null
                    && request.getParameter("Rubro_usuario") != null
                    && request.getParameter("Correo_usuario") != null
                    && request.getParameter("Confirmar_usuario") != null
                    && request.getParameter("Telefono_usuario") != null
                    && request.getParameter("Comuna_usuario") != null
                    && request.getParameter("Direccion_usuario") != null) {

                if (!request.getParameter("Rut_usuario").equals("")
                        && !request.getParameter("Nombre_usuario").equals("")
                        && !request.getParameter("NombreRepresentante_usuario").equals("")
                        && !request.getParameter("RutRepresentante_usuario").equals("")
                        && !request.getParameter("Rubro_usuario").equals("")
                        && !request.getParameter("Correo_usuario").equals("")
                        && !request.getParameter("Confirmar_usuario").equals("")
                        && !request.getParameter("Telefono_usuario").equals("")
                        && !request.getParameter("Comuna_usuario").equals("")
                        && !request.getParameter("Direccion_usuario").equals("")) {
                    Cliente newCliente = new Cliente();
                    newCliente.setTipo_cliente("EMPRESA");
                    newCliente.setRut(request.getParameter("Rut_usuario").toUpperCase());
                    newCliente.setNombre(request.getParameter("Nombre_usuario").toUpperCase());
                    newCliente.setNombre_representante(request.getParameter("NombreRepresentante_usuario").toUpperCase());
                    newCliente.setRut_representante(request.getParameter("RutRepresentante_usuario").toUpperCase());
                    newCliente.setRubro(request.getParameter("Rubro_usuario").toUpperCase());
                    newCliente.setMail(request.getParameter("Correo_usuario").toUpperCase());
                    newCliente.setTelefono(request.getParameter("Telefono_usuario").toUpperCase());
                    newCliente.setComuna(request.getParameter("Comuna_usuario"));
                    newCliente.setDireccion(request.getParameter("Direccion_usuario").toUpperCase());
                    newCliente.setEstado("ACTIVO");

                    new HiloCliente(newCliente, "modificar").start();
                } else if (!request.getParameter("Rut_usuario").equals("")) {
                    oldCliente = new Cliente();

                    oldCliente.buscar(request.getParameter("Rut_usuario"));

                    if (oldCliente.getNombre() == null) {
                        oldCliente = null;
                    }

                }

            }
        %>
        <script>


            const cargar_selects = async() => {
                let peticion = await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/Comunas/200')

                const data = await peticion.json();
                data.items.map(comuna => {
                    let option = document.createElement('option')
                    option.value = comuna.nombre;
                    option.innerHTML = comuna.nombre;

                    let select = document.getElementById('inputComuna');
                    select.appendChild(option)
                })
            <%if (oldCliente != null) 
        out.print("document.getElementById('inputComuna').value='" + oldCliente.getComuna() + "';");%>
                const peticion2 = await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/rubro')

                const   data2 = await peticion2.json();
                data2.items.map(comuna => {
                    let option = document.createElement('option')
                    option.value = comuna.nombre;
                    option.innerHTML = comuna.nombre;

                    let select = document.getElementById('inputRubro');
                    select.appendChild(option)
                })
<%if (oldCliente != null) 
        out.print("document.getElementById('inputRubro').value='" + oldCliente.getRubro()+ "';");%>
            }
            cargar_selects()

        </script>
    </head>
    <body>

       <form class="container-fluid" style="padding: 0px" action="Modulos_control?m=cli&op=modemp" method="post" >
            <div class="row justify-content-center py-2">
                <h2 class="col-6 text-center">Modificar Empresa</h2>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rut:</label>
                </div>
                <div class="col-5">
                    <input name="Rut_usuario" type="text" class="form-control" id="inputRut" placeholder="123456-7"/>
                </div>
                <input type="submit" class="col-1 btn btn-primary" value="Buscar">
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre:</label>
                </div>
                <div class="col-6">
                    <input name="Nombre_usuario" type="text" class="form-control" id="inputNombre" placeholder="CO.example"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre Representante:</label>
                </div>
                <div class="col-6">
                    <input name="NombreRepresentante_usuario" type="text" class="form-control" id="inputNombreRepresentante" placeholder="Nombre Apellido"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rut representante:</label>
                </div>
                <div class="col-6">
                    <input name="RutRepresentante_usuario" type="text" class="form-control" id="inputRutRepresentante" placeholder="123456-7"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rubro:</label>
                </div>
                <div class="col-6">
                    <select name="Rubro_usuario" class="form-select" id='inputRubro' aria-label="Default select example">
                        <option selected>Rubro</option>

                    </select>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Correo Electronico:</label>
                </div>
                <div class="col-6">
                    <input name="Correo_usuario" type="email" class="form-control" id="inputCorreo" placeholder="example@example.com"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Confirmar Correo:</label>
                </div>
                <div class="col-6">
                    <input name="Confirmar_usuario" type="email" class="form-control" id="inputConfirmar" placeholder="example@example.com"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Teléfono:</label>
                </div>
                <div class="col-6">
                    <input name="Telefono_usuario" type="text" class="form-control" id="inputTelefono" placeholder="+56912345678"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Comuna:</label>
                </div>
                <div class="col-6">
                    <select name="Comuna_usuario" class="form-select" id='inputComuna' aria-label="Default select example">
                        <option selected>Comunas</option>

                    </select>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Dirección:</label>
                </div>
                <div class="col-6">
                    <input name="Direccion_usuario" type="text" class="form-control" id="inputDireccion" placeholder="Example 1234"/>
                </div>
                <div class="row justify-content-center  align-items-center py-1">
                    <input type="submit" class="col-4 btn btn-primary" value="Guardar">
                </div>
            </div>
        </form>
        <%            if (oldCliente != null) {
      
                out.println("<script>"
                        + " const inputRut=document.getElementById('inputRut');"
                        + " const inputNombre=document.getElementById('inputNombre');"
                        + " const inputNombreRepresentante=document.getElementById('inputNombreRepresentante');"
                        + " const inputRutRepresentante=document.getElementById('inputRutRepresentante');"
                        + " const inputRubro=document.getElementById('inputRubro');"
                        + " const inputCorreo=document.getElementById('inputCorreo');"
                        + " const inputConfirmar=document.getElementById('inputConfirmar');"
                        + " const inputTelefono=document.getElementById('inputTelefono');"
                        + " const inputComuna=document.getElementById('inputComuna');"
                        + " const inputDireccion=document.getElementById('inputDireccion');"
                        + "\ninputRut.value='" + oldCliente.getRut() + "';"
                        + "\ninputNombre.value='" + oldCliente.getNombre() + "';"
                        + "\ninputNombreRepresentante.value='" + oldCliente.getNombre_representante() + "';"
                        + "\ninputRutRepresentante.value='" + oldCliente.getRut_representante() + "';"
                        + "\ninputRubro.value='" + oldCliente.getRubro() + "';"
                        + "\ninputCorreo.value='" + oldCliente.getMail() + "';"
                        + "\ninputConfirmar.value='" + oldCliente.getMail() + "';"
                        + "\ninputTelefono.value='" + oldCliente.getTelefono() + "';"
                        + "\ninputDireccion.value='" + oldCliente.getDireccion()+ "';"
                        + "</script>");
            }
        %>
    </body>
</html>