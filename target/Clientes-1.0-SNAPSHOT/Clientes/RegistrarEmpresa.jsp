<%@page import="Utilidades.HiloCliente"%>
<%@page import="beans.Cliente"%>
<%@page import="java.util.ArrayList"%>

<html>
    <head>
         <script>
       

 const cargar_selects=async()=>{
let peticion= await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/Comunas/200')

        const data= await peticion.json();
      data.items.map(comuna=>{
        let option= document.createElement('option')
           option.value=comuna.nombre;
           option.innerHTML=comuna.nombre;
           
            let select=document.getElementById('inputComuna');
        select.appendChild(option)
        })
        
     const peticion2= await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/rubro')

const   data2= await peticion2.json();
      data2.items.map(comuna=>{
        let option= document.createElement('option')
           option.value=comuna.nombre;
           option.innerHTML=comuna.nombre;
           
            let select=document.getElementById('inputRubro');
        select.appendChild(option)
        })
        
 }
 cargar_selects()

        </script>
        
    </head>
    <body>
          
  <form class="container-fluid" style="padding: 0px" action="Modulos_control?m=cli&op=regemp" method="post" >
            <%
                String flag = "0";

                if (request.getParameter("Rut_usuario") != null
                        && request.getParameter("Nombre_usuario") != null
                        && request.getParameter("Nombre_Representante_usuario") != null
                        && request.getParameter("Rut_Representante_usuario") != null
                        && request.getParameter("Rubro_usuario") != null
                        && request.getParameter("Correo_usuario") != null
                        && request.getParameter("Confirmacion_usuario") != null
                        && request.getParameter("Telefono_usuario") != null
                        && request.getParameter("Comuna_usuario") != null
                        && request.getParameter("Direccion_usuario") != null) {

                    Cliente newCliente = new Cliente();
                    newCliente.setTipo_cliente("EMPRESA");
                    newCliente.setEstado("ACTIVO");
                    newCliente.setRut(request.getParameter("Rut_usuario").toUpperCase());
                    newCliente.setNombre(request.getParameter("Nombre_usuario").toUpperCase());
                    newCliente.setNombre_representante(request.getParameter("Nombre_Representante_usuario").toUpperCase());
                    newCliente.setRut_representante(request.getParameter("Rut_Representante_usuario").toUpperCase());
                    newCliente.setRubro(request.getParameter("Rubro_usuario").toUpperCase());
                    newCliente.setMail(request.getParameter("Correo_usuario").toUpperCase());
                    newCliente.setTelefono(request.getParameter("Telefono_usuario").toUpperCase());
                    newCliente.setComuna(request.getParameter("Comuna_usuario").toUpperCase());
                    newCliente.setDireccion(request.getParameter("Direccion_usuario").toUpperCase());

                  new HiloCliente(newCliente,"guardar").start();
                }


            %>

            <div class="row justify-content-center py-2">
                <h2 class="col-6 text-center">Registrar Empresa</h2>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rut:</label>
                </div>
                <div class="col-6">
                    <input name="Rut_usuario" type="text" class="form-control" id="exampleFormControlInput1" placeholder="123456-7"/>
                </div>

            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre:</label>
                </div>
                <div class="col-6">
                    <input name="Nombre_usuario" type="text" class="form-control" id="exampleFormControlInput1" placeholder="CO.example"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre Representante:</label>
                </div>
                <div class="col-6">
                    <input name="Nombre_Representante_usuario" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre Apellido"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rut representante:</label>
                </div>
                <div class="col-6">
                    <input name="Rut_Representante_usuario" type="text" class="form-control" id="exampleFormControlInput1" placeholder="123456-7"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Rubro:</label>
                </div>
                <div class="col-6">
                    <select name="Rubro_usuario" id='inputRubro' class="form-select" aria-label="Default select example">
                        <option selected>Rubro</option>
                   </select>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Correo Electronico:</label>
                </div>
                <div class="col-6">
                    <input name="Correo_usuario" type="email" class="form-control" id="exampleFormControlInput1" placeholder="example@example.com"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Confirmar Correo:</label>
                </div>
                <div class="col-6">
                    <input name="Confirmacion_usuario" type="email" class="form-control" id="exampleFormControlInput1" placeholder="example@example.com"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Teléfono:</label>
                </div>
                <div class="col-6">
                    <input name="Telefono_usuario" type="text" class="form-control" id="exampleFormControlInput1" placeholder="+56912345678"/>
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
                    <input name="Direccion_usuario" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Example 1234"/>
                </div>
                <div class="row justify-content-center  align-items-center py-1">
                    <input class=" col-4 btn btn-primary" type="submit" value="Guardar">
                </div>
                <%
                    switch (flag) {
                        case "1":

                            out.println("<div class=\"alert alert-primary\" role=\"alert\">"
                                    + "Guardado"
                                    + "</div>");

                            break;
                        case "2":
                            out.println("<div class=\"alert alert-warning\" role=\"alert\">"
                                    + "Error al guardar"
                                    + "</div>");
                            break;

                    }

                %>  
            </div>
        </form>
    </body>
</html>