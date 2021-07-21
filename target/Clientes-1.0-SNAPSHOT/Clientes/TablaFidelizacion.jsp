<%@page import="Utilidades.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row align-items-center py-2">
                <h3 style="text-align: center ">Beneficiarios</h3>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-hover table-sm">

                        <thead>
                            <tr class="table-active">
                                <th scope="col-1">#</th>
                                <th scope="col-2">RUT</th>
                                <th scope="col-1">Nombre</th>
                                <th scope="col-2">Email</th>
                                <th scope="col-2">Años como cliente</th>
                                <th scope="col-2">Meses de inactividad</th>
                            </tr>
                        </thead>
                        <tbody>

                            <%
                                if (request.getParameter("inputInactividad") == null) {
                                    String sql = "select c.RUT,c.NOMBRE,c.EMAIL,(TRUNC((SYSDATE-c.fecha_incripcion)/365)) as tiempo_registro,(TRUNC((SYSDATE-be.fecha)/30)) as ultima_actividad from CLIENTE c left join (select fecha,cliente from boletas where rownum=1 ORDER BY fecha desc ) be on c.rut=be.CLIENTE  "
                                            + "where  (TRUNC((SYSDATE-fecha_incripcion)/365))>=" + request.getParameter("inputTiempo");

                                    try {
                                        ResultSet rs = new Database().Obtener_Resultado(sql);
                                        int cont = 0;
                                        while (rs.next()) {
                                            cont++;
                                            String actividad = (rs.getString("ultima_actividad") != null) ? rs.getString("ultima_actividad") : "no ahi actividad";
                                            out.println("<tr>"
                                                    + "<th scope='row'>" + cont + "<label class='form-check-label' for='flexCheckChecked'></label></th>"
                                                    + "<td>" + rs.getString("RUT") + "</td>"
                                                    + "<td>" + rs.getString("NOMBRE") + "</td>"
                                                    + "<td>" + rs.getString("EMAIL") + "</td>"
                                                    + "<td>" + rs.getString("tiempo_registro") + "</td>"
                                                    + "<td>" + actividad + "</td>"
                                                    + "</tr>");
                                        }
                                    } catch (Exception e) {

                                    }
                                } else {
                                    String sql = "select c.RUT,c.NOMBRE,c.EMAIL,(TRUNC((SYSDATE-c.fecha_incripcion)/365)) as tiempo_registro,(TRUNC((SYSDATE-be.fecha)/30)) as ultima_actividad from CLIENTE c left join (select fecha,cliente from boletas where rownum=1 ORDER BY fecha desc ) be on c.rut=be.CLIENTE  "
                                            + "where  (TRUNC((SYSDATE-fecha_incripcion)/365))>=" + request.getParameter("inputTiempo") + " and (TRUNC((SYSDATE-be.fecha)/30))<" + request.getParameter("inputInactividad");

                                    try {
                                        ResultSet rs = new Database().Obtener_Resultado(sql);
                                        int cont = 0;
                                        while (rs.next()) {
                                            cont++;
                                            out.println("<tr>"
                                                    + "<th scope='row'>" + cont + "<label class='form-check-label' for='flexCheckChecked'></label></th>"
                                                    + "<td>" + rs.getString("RUT") + "</td>"
                                                    + "<td>" + rs.getString("NOMBRE") + "</td>"
                                                    + "<td>" + rs.getString("EMAIL") + "</td>"
                                                    + "<td>" + rs.getString("tiempo_registro") + "</td>"
                                                    + "<td>" + rs.getString("ultima_actividad") + "</td>"
                                                    + "</tr>");
                                        }
                                    } catch (Exception e) {

                                    }

                                }
                            %>



                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row justify-content-center align-self-center py-2">


                <button type="submit" class="btn btn-primary col-2">Enviar correo</button>

            </div>
        </div>   

    </div>

    <script src="js/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>