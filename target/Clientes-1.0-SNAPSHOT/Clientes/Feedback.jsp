<%@page import="Utilidades.HiloSQL"%>
<%@page import="java.util.ArrayList"%>
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
        <%

            if (request.getParameter("inputfeedbackurl") != null && !(request.getParameter("inputfeedbackurl").equals(""))) {

                out.println("<script>"
                        + "\nconst inputFeed=document.getElementById('inputfeedbackurl');"
                        + "\ninputFeed.value='" + request.getParameter("inputfeedbackurl") + "'</script>");
                String sql = "select * from cliente";
                ArrayList<String> listMail = null;
                try {
                    ResultSet rs = new Database().Obtener_Resultado(sql);
                    listMail = new ArrayList<String>();
                    while (rs.next()) {
                        listMail.add(rs.getString("EMAIL"));
                    }
                } catch (Exception e) {

                }
                sql = "insert into encuestas(url,fecha,numclientes) values('" + request.getParameter("inputfeedbackurl") + "',SYSDATE," + listMail.size() + ")";
                new HiloSQL(sql).start();
            }

        %>
    </head>
    <body>
        <br>
        <h3 style="text-align: center ">Encuesta de satisfaccion</h3>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">


                    <form action="Modulos_control?m=cli&op=feed" method="post" >

                        <div class="form-row align-items-center" >
                            <div class="row">
                                <div class="col-10">
                                    <label class="sr-only" for="inlineFormInput">URL encuesta</label>
                                    <input type="text"  name="inputfeedbackurl" id="1" class="form-control mb-2"  placeholder="https://docs.google.com/forms/d/e/1FAIpQLSdnXWERsV01176JleG0-T_vJJKZIiaMCj_RBg6ApYHHX5cTwg/viewform?usp=sf_link">
                                </div>
                                <div class="col-2">
                                    <br>
                                    <button type="submit" name="inputfeedbackenviar" id="2" class="btn btn-primary mb-2">Enviar</button>
                                </div>
                            </div>
                        </div>
                    </form>



                    <table class="table table-hover table-striped table-sm">
                        <thead>
                            <tr class="table-active">
                                <th scope="col-1">#</th>
                                <th scope="col-2">ID Encuesta</th>
                                <th scope="col-5">URL</th>
                                <th scope="col-3">Fecha</th>
                                <th scope="col-1">Nº Destinatarios</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%                                 
                                String sql = "select * from encuestas order by encuestas.fecha desc";

                                try {
                                    ResultSet rs = new Database().Obtener_Resultado(sql);
                                    int cont = 1;
                                    while (rs.next()) {
                                        String[] fecha=rs.getString("FECHA").split(" ");
                                        out.println("<tr>"
                                                + "<th scope='row'>" + cont + "</th>"
                                                + "<td>" + rs.getString("ID") + "</td>"
                                                + "<td>" + rs.getString("URL") + "</td>"
                                                + "<td>" + fecha[0] + "</td>"
                                                + "<td>" + rs.getString("NUMCLIENTES") + "</td>"
                                                + "</tr>");
                                        cont++;
                                    }
                                } catch (Exception e) {

                                }
                            %>
                         

                        </tbody>
                    </table>

                    <br>
                </div>   
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
