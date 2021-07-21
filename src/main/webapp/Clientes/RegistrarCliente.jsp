<%@page import="Utilidades.HiloCliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URL"%>
<%@page import="beans.Cliente"%>
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
        
     const peticion2= await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/sexo')

const   data2= await peticion2.json();
      data2.items.map(comuna=>{
        let option= document.createElement('option')
           option.value=comuna.nombre;
           option.innerHTML=comuna.nombre;
            let select=document.getElementById('inputSexo');
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
        <form class="container-fluid" style="padding: 0px" action="Modulos_control?m=cli&op=regcli" method="post" >
            <%
                String flag = "0";

                
                if (request.getParameter("Rut_usuario") != null
                        && request.getParameter("Nombre_usuario") != null
                        && request.getParameter("Correo_usuario") != null
                        && request.getParameter("Confirmar_usuario") != null
                        && request.getParameter("Telefono_usuario") != null
                        && request.getParameter("Comuna_usuario") != null
                        && request.getParameter("Direccion_usuario") != null
                        && request.getParameter("sexo_usuario") != null
                        && request.getParameter("Fecha_nacimiento_usuario") != null) {

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
                    
                 
                    
                   new HiloCliente(newCliente, "guardar").start();
                }
            %>




            <div class="row justify-content-center py-2" >

                <div class="col-6 " >
                    <h2 class="text-center">Registrar Cliente</h2>
                </div>
            </div>
            <div class="row justify-content-center py-1">   
                <div class="col-2 align-self-center">
                    <label class="">Rut:</label>
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" id="exampleFormControlInput1" name='Rut_usuario' placeholder="123456-7"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre:</label>
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" id="exampleFormControlInput1" name='Nombre_usuario'placeholder="Nombre "/>
                </div>
            </div>

            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Correo Electronico:</label>
                </div>
                <div class="col-6">
                    <input type="email" class="form-control" id="exampleFormControlInput1" name='Correo_usuario'placeholder="example@example.com"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Confirmar Correo:</label>
                </div>
                <div class="col-6">
                    <input type="email" class="form-control" id="exampleFormControlInput1"name='Confirmar_usuario' placeholder="example@example.com"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Teléfono:</label>
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" id="Telefono" name='Telefono_usuario'placeholder="+56912345678"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Comuna:</label>
                </div>
                <div class="col-6">
                    <select class="form-select" id='inputComuna' aria-label="Default select example" name='Comuna_usuario'>
                        <option selected>Comunas</option>


                    </select>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Dirección:</label>
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" id="exampleFormControlInput1"name='Direccion_usuario' placeholder="Example 1234"/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Fecha de Nacimiento:</label>
                </div>
                <div class="col-6">
                    <input type="date" style="width: 100%" name='Fecha_nacimiento_usuario'/>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Sexo:</label>
                </div>
                <div class="col-6">
                    <select class="form-select" id='inputSexo' aria-label="Default select example" name='sexo_usuario'>
                        <option selected>Sexo</option>

                    </select>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">
                <input type="submit" class="col-4 btn btn-primary" value="Guardar">
            </div>
            <%                switch (flag) {
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

            <%//out.println("<script> const input=document.getElementById('Telefono'); input.value='12316'</script>");%>
        </form>
    </body>
</html>