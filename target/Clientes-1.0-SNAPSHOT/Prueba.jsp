<%-- 
    Document   : Prueba
    Created on : 14-jul-2021, 13:16:34
    Author     : camil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Absolute Path</title></head>
Absolute Path is:<%= getServletContext().getRealPath("/") %> 
</html>
