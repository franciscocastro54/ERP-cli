
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%-- aqui se incluye el encabezado de bootstrap--%>
        <%@include file="../css/cssdefault.jsp" %>
        <title>JSP Page</title>
        
    </head>
    <body>
     
        <div class="container-fluid">
            <div class="row">
                <%-- aqui se incluye la barra superior--%>
            <%@include file="../componentes/healer.jsp" %>
            </div>
            <div class="row">
                <div class="col-2">
                    <%--  aqui se incluye la barra izquierda  --%>
                    <%@include file="../componentes/menu_mod_CLi.jsp" %>
                </div>
                <div class="col-10">
                    <%--   aqui se incluye la direccion del componente  --%>
                    <%@include file="" %>
                    <%--holo--%>
               </div>
            </div>
        </div>
    </body>
</html>
