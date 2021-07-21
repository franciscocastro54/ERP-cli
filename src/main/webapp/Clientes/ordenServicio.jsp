
<%@page import="Utilidades.HiloOrdenServicio"%>
<%--
<form class="container-fluid" action="Modulos_control?m=cli&op=modcli" method="post">
    <div class="row justify-content-center py-2">
        
        
    <h2 class="p-2 col-6 text-center">Orden de Servicio</h2>
        </div>
   
<div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Rut:</label>
        </div>
        <div class="col-5">
            <input type="text" class="form-control" id="rut" placeholder="123456-7"/>
        </div>
        <input type="button" class="col-1 btn btn-primary" value="Buscar">
    </div>
    

    <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Nombre:</label>
    </div>
    <div class="col-6">
           <input type="text" class="form-control" id="nombre" placeholder="Nombre "/>
    </div>
    </div>
  <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Apellido:</label>
    </div>
    <div class="col-6">
           <input type="text" class="form-control" id="apellido" placeholder="Apellido"/>
    </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Correo Electronico:</label>
    </div>
    <div class="col-6">
        <input type="email" class="form-control" id="mail" placeholder="example@example.com"/>
    </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Confirmar Correo:</label>
    </div>
    <div class="col-6">
        <input type="email" class="form-control" id="mail" placeholder="example@example.com"/>
    </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Telefono:</label>
    </div>
    <div class="col-6">
           <input type="text" class="form-control" id="telefono" placeholder="+56912345678"/>
    </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Departamento:</label>
    </div>
    <div class="col-6">
        <select class="form-select" id="departamento" aria-label="Default select example">
            <option selected>seleccionar departamento</option>
            <option value="1">Finanzas</option>
            <option value="2">Ventas</option>
            
        </select>
    </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
    <div class="col-2 ">
            <label class="">Direccion:</label>
    </div>
    <div class="col-6">
           <input type="text" class="form-control" id="direccion" placeholder="Example 1234"/>
    </div>
    </div>
    
    <div class="row justify-content-center  align-items-center py-1">   
    
    
    <div class="p-2 row justify-content-center  align-items-center py-1">
        <input type="submit" class="col-4 btn btn-primary" value="Ingresar orden">
    </div>
    </form>
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Date"%>
<%@page import="Utilidades.HiloCliente"%>
<%@page import="beans.Cliente"%>
<%@page import="beans.Orden_de_servicio"%>
<%@page import="java.util.ArrayList"%>

<html>
    <head>
        <%   Cliente oldCliente = null;
            String flag = "0";

            if (         request.getParameter("Rut_usuario") != null
                    
                      && request.getParameter("Descripcion_orden") != null
                      && request.getParameter("Tipo_orden") != null) {

             
                if(!request.getParameter("Rut_usuario").equals("")
                        
                      && !request.getParameter("Descripcion_orden").equals("")
                      && !request.getParameter("Tipo_orden").equals("")  ){
                Cliente newCliente = new Cliente();
                Orden_de_servicio newOrden = new Orden_de_servicio();
                  
                  newOrden.setFecha(new Date());
                  newOrden.setCliente(request.getParameter("Rut_usuario").toUpperCase());
                  newOrden.setDescripcion(request.getParameter("Descripcion_orden"));
                  newOrden.setTipo(request.getParameter("Tipo_orden"));
                  newOrden.setEstado("ACTIVO");
                 
                  new HiloOrdenServicio(newOrden, "modificar").start();
                }else if (!request.getParameter("Rut_usuario").equals("")) {
                    
                    oldCliente=new Cliente();
                    oldCliente.buscar(request.getParameter("Rut_usuario"));
                    if (oldCliente.getNombre() == null) {
                        oldCliente = null;
                    }
                 }

            }
        %>
        <script>

            const cargar_selects = async() => {
                let peticion= await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/tipo_servicio')

        const data= await peticion.json();
      data.items.map(tipo=>{
        let option= document.createElement('option')
           option.value=tipo.nombre;
           option.innerHTML=tipo.nombre;
           
            let select=document.getElementById('inputTipo');
        select.appendChild(option)
        })

            }
            try{
                cargar_selects()
                }catch (error){
                console.log('reintentando...')
                cargar_selects()
            }

        </script>
    </head>
    <body>

        <form class="container-fluid" style="padding: 0px" action="Modulos_control?m=cli&op=ord" method="post" >

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


                <h2 class="col-6 text-center">Orden de servicio</h2>
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
                    <label class="">Tipo de servicio:</label>
                </div>
                <div class="col-6">
                    <select name='Tipo_orden' class="form-select" id='inputTipo' aria-label="Default select example">
                        <option selected>servicio</option>

                    </select>
                </div>
            </div>
            
            <div class="row justify-content-center  align-items-center py-1">
                <div class="col-2 ">
                    <label class="">Descripción:</label>
                </div>
                <div class="col-6">
                    <textarea name='Descripcion_orden' id='inputDescripcion'class="form-control" aria-label="With textarea"></textarea>
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