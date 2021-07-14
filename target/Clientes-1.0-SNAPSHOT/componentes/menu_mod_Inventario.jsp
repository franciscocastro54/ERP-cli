<%-- 
    Document   : menu_mod_Inventario
    Created on : 14-jul-2021, 18:40:54
    Author     : camil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="accordion h-auto d-inline-block" id="accordionExample" style="height: 100%;width: 100%">
            <div class="accordion-item " >
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                        <strong>Inventario</strong>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body" style="padding: 0px">

                        <a href="Modulos_control?m=cli&op=regcli" class="nav-link list-group-item">OPCION 1#</a>
                        <a href="Modulos_control?m=cli&op=regemp" class="nav-link list-group-item">OPCION 2#</a>
                        <a href="Modulos_control?m=cli&op=modcli" class="nav-link list-group-item">OPCION 3#</a>
                        <a href="Modulos_control?m=cli&op=modemp" class="nav-link list-group-item">OPCION 4#</a>

                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
