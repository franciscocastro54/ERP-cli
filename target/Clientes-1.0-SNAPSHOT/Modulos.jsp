<%-- 
    Document   : Modulos
    Created on : 16-may-2021, 20:38:20
    Author     : camil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="css/cssdefault.jsp" %>
        <title>JSP Page</title>
    </head>
    <body >
        <div class="container-fluid">
         <div class="py-2 row  " >
             <img src="imagenes/log-large.jpeg" class="col-2" style="">
             <div class="col-1">
                 </div>
             <h2  class="col-6 text-center">INTRANET ERP 230</h2>
               <div class="col-2">
                 </div>
         </div>
         
             <div class=" row justify-content-center  align-items-center " style="padding-top: 5em">
             
                 <h4 class="col-12 text-center">Modulos</h4>
            </div>
         <div class=" row  justify-content-center  align-items-center " style="padding-top: 10em">
       
         <div class="col-2 text-center">
             <a class="" href="/ERP-cli/Modulos_control?m=cli"><img src="imagenes/log-small.jpeg" width="64px" height="64px">
                 <p>Clientes</p>
             </a>
             </div>
             <div class="col-2 text-center">
             <a class="" href="/ERP-cli/Modulos_control?m=ven"><img src="imagenes/log-small.jpeg" width="64px" height="64px">
                 <p>Ventas</p>
             </a>
             </div>
             <div class="col-2 text-center">
             <a class="" href="/ERP-cli/Modulos_control?m=com"><img src="imagenes/log-small.jpeg" width="64px" height="64px">
                 <p>Compras</p>
             </a>
             </div>
             <div class="col-2 text-center">
             <a class="" href="/ERP-cli/Modulos_control?m=inv"><img src="imagenes/log-small.jpeg" width="64px" height="64px">
                 <p>Inventario</p>
             </a>
             </div>
         <div class="col-2 text-center">
             <a class="" href="/ERP-cli/Modulos_control?m=fin"><img src="imagenes/log-small.jpeg" width="64px" height="64px">
                 <p>Finanzas</p>
             </a>
             </div>
         </div>
          <div class=" row  justify-content-center  align-items-center " style="padding-top: 10em">
              <label class="col text-center">ERP seccion 230</label>
               <label class="col text-center">Bravo de saravia 2980</label>
                <label class="col text-center"> Rep_230@inacapmail.cl</label>
          
          </div>
            
        </div>
    </body>
</html>
