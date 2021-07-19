<%@page import="Utilidades.HiloCliente"%>
<%@page import="beans.Cliente"%>
<%@page import="java.util.ArrayList"%>

<html>
    <head>
        <%   Cliente oldCliente = null;
            String flag = "0";

            if (request.getParameter("Rut_usuario") != null
                      && request.getParameter("Nombre_usuario") != null
                      && request.getParameter("Correo_usuario") != null
                      && request.getParameter("Confirmacion_usuario") != null
                      && request.getParameter("Telefono_usuario") != null
                      && request.getParameter("Comuna_usuario") != null
                      && request.getParameter("Direccion_usuario") != null
                      && request.getParameter("sexo_usuario") != null
                      && request.getParameter("Fecha_nacimiento_usuario") != null) {

             
                if(!request.getParameter("Rut_usuario").equals("")
                      && !request.getParameter("Nombre_usuario").equals("")
                      && !request.getParameter("Correo_usuario").equals("")
                      && !request.getParameter("Confirmacion_usuario").equals("")
                      && !request.getParameter("Telefono_usuario").equals("")
                      && !request.getParameter("Comuna_usuario").equals("")
                      && !request.getParameter("Direccion_usuario").equals("")
                      && !request.getParameter("sexo_usuario").equals("")
                      && !request.getParameter("Fecha_nacimiento_usuario").equals("")){
                Cliente newCliente = new Cliente();
                  newCliente.setTipo_cliente("NATURAL");
                  newCliente.setRut(request.getParameter("Rut_usuario").toUpperCase());
                  newCliente.setNombre(request.getParameter("Nombre_usuario").toUpperCase());
                  newCliente.setMail(request.getParameter("Correo_usuario").toUpperCase());
                  newCliente.setTelefono(request.getParameter("Telefono_usuario").toUpperCase());
                  newCliente.setDireccion(request.getParameter("Direccion_usuario").toUpperCase());
                  newCliente.setSexo(request.getParameter("sexo_usuario").toUpperCase());
                  newCliente.setComuna(request.getParameter("Comuna_usuario"));
                  newCliente.setEstado("ACTIVO");
                  String[] fecha = request.getParameter("Fecha_nacimiento_usuario").split("-");
                  newCliente.setFecha_nacimiento(fecha[2] + "-" + fecha[1] + "-" + fecha[0]);
            
                  new HiloCliente(newCliente, "modificar").start();
                }else if (!request.getParameter("Rut_usuario").equals("")) {
                    oldCliente = new Cliente();

                    oldCliente.buscar(request.getParameter("Rut_usuario"));

                    if (oldCliente.getNombre() == null) {
                        oldCliente = null;
                    }
                    
                    
                 }

            }
        %>
        <script>

            let cont = 0;
            const cargar_selects = async() => {
                try {
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
                    const peticion2 = await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/sexo')
                    const   data2 = await peticion2.json();
                    data2.items.map(comuna => {
                        let option = document.createElement('option')
                        option.value = comuna.nombre;
                        option.innerHTML = comuna.nombre;

                        let select = document.getElementById('inputSexo');
                        select.appendChild(option)
                    })
            <%if (oldCliente != null) out.print("document.getElementById('inputSexo').value='" + oldCliente.getSexo() + "';");%>
                } catch (error) {
                    (error) => {
                        console.log('reintentando...')
                        cont = cont + 1;
                        if (cont < 3)
                            cargar_selects();
                    }
                }

            }
            cargar_selects()

        </script>
    </head>
    <body>

        <form class="container-fluid" style="padding: 0px" action="Modulos_control?m=cli&op=modcli" method="post" >

            <%
                /*
              if (request.getParameter("Rut_usuario") != null
                                    && request.getParameter("Nombre_usuario") != null
                                    && request.getParameter("Correo_usuario") != null
                                    && request.getParameter("Confirmar_usuario") != null
                                    && request.getParameter("Telefono_usuario") != null
                                    && request.getParameter("Comuna_usuario") != null
                                    && request.getParameter("Direccion_usuario") != null
                                    && request.getParameter("sexo_usuario") != null
                                    && request.getParameter("Fecha_nacimiento_usuario") != null) {
                
                            out.println("todos nulos");
                            }
              if(request.getParameter("Rut_usuario")== null){ out.println("rut null");}
              else if(request.getParameter("Rut_usuario").equals(""))out.println("rut vacio");
              else if(!request.getParameter("Rut_usuario").equals("") && !request.getParameter("Nombre_usuario").equals(""))
                  out.println(request.getParameter("Rut_usuario")+request.getParameter("Nombre_usuario"));
              else if(!request.getParameter("Rut_usuario").equals(""))out.println(request.getParameter("Rut_usuario"));
                 */
             /*
                             if (request.getParameter("Rut_usuario").equals("")
                                    && request.getParameter("Nombre_usuario").equals("")
                                    && request.getParameter("Correo_usuario").equals("")
                                    && request.getParameter("Confirmar_usuario").equals("")
                                    && request.getParameter("Telefono_usuario").equals("")
                                    && request.getParameter("Comuna_usuario").equals("")
                                    && request.getParameter("Direccion_usuario").equals("")
                                    && request.getParameter("sexo_usuario").equals("")
                                    && request.getParameter("Fecha_nacimiento_usuario").equals("")) {
                 
                                 out.println("todos vacios");
                             }
                             if((request.getParameter("Rut_usuario").equals(""))){
                 
                             out.println("rut vacio");
                 
                             }
                               if((!request.getParameter("Rut_usuario").equals(""))){
                 
                             out.println("rut con datos");
                 
                             }
                 */
            %>
            <div class="row justify-content-center py-2">


                <h2 class="col-6 text-center">Modificar Cliente</h2>
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rut:</label>
                </div>
                <div class="col-5">
                    <input name="Rut_usuario" type="text"  class="form-control" id="inputRut" placeholder="123456-7"/>
                </div>
                <input type="submit" class="col-1 btn btn-primary" value="Buscar">
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre:</label>
                </div>
                <div class="col-6">
                    <input name="Nombre_usuario" type="text" class="form-control" id="inputNombre" placeholder="Nombre "/>
                </div>

            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Correo Electronico:</label>
                </div>
                <div class="col-6">
                    <input name='Correo_usuario' type="email" class="form-control" id="inputCorreo" placeholder="example@example.com"/>
                </div>

            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Confirmar Correo:</label>
                </div>
                <div class="col-6">
                    <input name="Confirmacion_usuario" type="email" class="form-control" id="inputConfirmar" placeholder="example@example.com"/>
                </div>
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Teléfono:</label>
                </div>
                <div class="col-6">
                    <input name ='Telefono_usuario' type="text" class="form-control" id="inputTelefono" placeholder="+56912345678"/>
                </div>
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Comuna:</label>
                </div>
                <div class="col-6">
                    <select name="Comuna_usuario" id='inputComuna' class="form-select" aria-label="Default select example">
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
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Fecha de Nacimiento:</label>
                </div>
                <div class="col-6">
                    <input name='Fecha_nacimiento_usuario' id='inputFecha' type="date" style="width: 100%">
                </div>
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">sexo:</label>
                </div>
                <div class="col-6">
                    <select name='sexo_usuario' class="form-select" id='inputSexo' aria-label="Default select example">
                        <option selected>sexo</option>

                    </select>
                </div>
            </div>

            <div class="row justify-content-center  align-items-center py-1">
                <input type="submit" class="col-4 btn btn-primary" value="Guardar">
            </div>
            <%            if (oldCliente != null) {
                    String[] fecha = oldCliente.getFecha_nacimiento().split("-");
                    out.println("<script>"
                            + " const inputRut=document.getElementById('inputRut');"
                            + " const inputNombre=document.getElementById('inputNombre');"
                            + " const inputCorreo=document.getElementById('inputCorreo');"
                            + " const inputConfirmar=document.getElementById('inputConfirmar');"
                            + " const inputTelefono=document.getElementById('inputTelefono');"
                            + " const inputComuna=document.getElementById('inputComuna');"
                            + " const inputDireccion=document.getElementById('inputDireccion');"
                            + " const inputFecha=document.getElementById('inputFecha');"
                            + " const inputSexo=document.getElementById('inputSexo');"
                            + "\ninputRut.value='" + oldCliente.getRut() + "';"
                            + "\ninputNombre.value='" + oldCliente.getNombre() + "';"
                            + "\ninputCorreo.value='" + oldCliente.getMail() + "';"
                            + "\ninputConfirmar.value='" + oldCliente.getMail() + "';"
                            + "\ninputTelefono.value='" + oldCliente.getTelefono() + "';"
                            + "\ninputDireccion.value='" + oldCliente.getDireccion() + "';"
                            + "\ninputFecha.value='" + fecha[0] + "-" + fecha[1] + "-" + fecha[2].substring(0, 2) + "';"
                            + "</script>");
                }
            %>

        </form>
    </body>
</html>