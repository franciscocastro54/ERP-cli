<%-- 
    Document   : Prueba_db
    Created on : 12-jul-2021, 12:30:35
    Author     : camil
--%>

<%@page import="Utilidades.Database"%>
<%@page import="beans.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Database.path= getServletContext().getRealPath("/");
        Database db= new Database();
    
       if(db.conectar()) out.print("<h2>Resulto</h2>");
      else out.println("<h2>no resulto</h2>");
        
        %>
    </body>
</html>
