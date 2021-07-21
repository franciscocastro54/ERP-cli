<%@page import="beans.Cliente"%>
<html>
    <body>
        <main class="container-fluid">
            <div class="row justify-content-center  align-items-center py-2">
                <h2 class="col-6 text-center">Historial Cliente</h2>
            </div>

            <form class="row justify-content-center  align-items-center py-1" action="Modulos_control?m=cli&op=His" method="post" >
                <label class="col-1"><strong>Rut:</strong></label>
                <input name="inputRut" id="inputRut" type="text" class="col-4 "/>
                <input type="submit" class="col-1 btn btn-primary" value="Buscar" >
                <%
                    Cliente cliente = null;
                    if (request.getParameter("inputRut") != null && !(request.getParameter("inputRut").equals(""))) {
                        cliente = new Cliente();
                        cliente.buscar(request.getParameter("inputRut"));
                        out.println("<script>"
                                + "\nconst inputRut=document.getElementById('inputRut');"
                                + "\ninputRut.value='" + cliente.getRut() + "'</script>");

                    }

                %>
            </form>
            <div class="row py-1">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="Informacion-tab" data-bs-toggle="tab" data-bs-target="#Informacion" type="button" role="tab" aria-controls="Informacion" aria-selected="true">Información</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="ventas-tab" data-bs-toggle="tab" data-bs-target="#ventas" type="button" role="tab" aria-controls="ventas" aria-selected="false">Ventas</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="servicio-tab" data-bs-toggle="tab" data-bs-target="#servicio" type="button" role="tab" aria-controls="servicio" aria-selected="false">Orden de servicio</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="Informacion" role="tabpanel" aria-labelledby="Informacion-tab">
                        <table class=" table table-striped">
                            <tbody>
                                <%                                    if (cliente != null) {
                                        if (cliente.getTipo_cliente().equals("NATURAL")) {
                                            String[] fecha1 = cliente.getFecha_nacimiento().split(" ");
                                            String[] fecha2 = cliente.getFecha_registro().split(" ");
                                            out.println("<tr><td><strong>Nombre:</strong></td><td>" + cliente.getNombre() + "</td></tr>");
                                            out.println("<tr><td><strong>Rut:</strong></td><td>" + cliente.getRut() + "</td></tr>");
                                            out.println("<tr><td><strong>Correo:</strong></td><td>" + cliente.getMail() + "</td></tr>");
                                            out.println("<tr><td><strong>Teléfono:</strong></td><td>" + cliente.getTelefono() + "</td></tr>");
                                            out.println("<tr><td><strong>Comuna:</strong></td><td>" + cliente.getComuna() + "</td></tr>");
                                            out.println("<tr><td><strong>Dirección</strong></td><td>" + cliente.getDireccion() + "</td></tr>");
                                            out.println("<tr><td><strong>Fecha de nacimiento:</strong></td><td>" + fecha1[0] + "</td></tr>");
                                            out.println("<tr><td><strong>Fecha de registro:</strong></td><td>" + fecha2[0] + "</td></tr>");
                                            out.println("<tr><td><strong>Sexo:</strong></td><td>" + cliente.getSexo() + "</td></tr>");

                                        } else if (cliente.getTipo_cliente().equals("EMPRESA")) {
                                            String[] fecha2 = cliente.getFecha_registro().split(" ");
                                            out.println("<tr><td><strong>Nombre:</strong></td><td>" + cliente.getNombre() + "</td></tr>");
                                            out.println("<tr><td><strong>Rut:</strong></td><td>" + cliente.getRut() + "</td></tr>");
                                            out.println("<tr><td><strong>Nombre Representante:</strong></td><td>" + cliente.getNombre_representante() + "</td></tr>");
                                            out.println("<tr><td><strong>Rut Representante:</strong></td><td>" + cliente.getRut_representante() + "</td></tr>");
                                            out.println("<tr><td><strong>Rubro:</strong></td><td>" + cliente.getRubro() + "</td></tr>");
                                            out.println("<tr><td><strong>Correo:</strong></td><td>" + cliente.getMail() + "</td></tr>");
                                            out.println("<tr><td><strong>Teléfono:</strong></td><td>" + cliente.getTelefono() + "</td></tr>");
                                            out.println("<tr><td><strong>Comuna:</strong></td><td>" + cliente.getComuna() + "</td></tr>");
                                            out.println("<tr><td><strong>Dirección:</strong></td><td>" + cliente.getDireccion() + "</td></tr>");
                                            out.println("<tr><td><strong>Fecha de registro:</strong></td><td>" + fecha2[0] + "</td></tr>");

                                        }

                                    }


                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="ventas" role="tabpanel" aria-labelledby="ventas-tab">
                        <table class=" table table-striped">
                            <thead>   <tr><th>ID</th><th>Fecha</th><th>Monto</th></tr></thead>
                            <tbody>
                                <%                                    if (cliente != null) {
                                        cliente.buscar_Boletas(-1);

                                        for (int i = 0; i < cliente.getBoletas().size(); i++) {
                                            String[] fecha = cliente.getBoletas().get(i).getFecha().split(" ");
                                            out.println("<tr><td>" + cliente.getBoletas().get(i).getId() + "</td>"
                                                    + "<td>" + fecha[0] + "</td>"
                                                    + "<td>" + cliente.getBoletas().get(i).getMonto() + "</td>");
                                        }

                                    }


                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="servicio" role="tabpanel" aria-labelledby="servicio-tab">
                        <table class=" table table-striped">
                            <thead><tr><th>ID</th><th>Fecha</th><th>Tipo</th><th>estado</th></tr></thead>
                            <tbody>
                                <%     if (cliente != null) {
                                        cliente.buscar_orden_servicio(-1);

                                        for (int i = 0; i < cliente.getOrden_de_servicio().size(); i++) {
                                            String[] fecha = cliente.getOrden_de_servicio().get(i).getFecha().toString().split(" ");
                                            out.println("<tr><td>" + cliente.getOrden_de_servicio().get(i).getIdOrden() + "</td>"
                                                    + "<td>" + fecha[0] + "</td>"
                                                    + "<td>" + cliente.getOrden_de_servicio().get(i).getTipo()+ "</td>"
                                                    + "<td>" + cliente.getOrden_de_servicio().get(i).getEstado() + "</td>");
                                        }

                                    }


                                %>
                            </tbody>
                        </table>

                    </div>

                    <div class="tab-pane fade" id="Encuestas" role="tabpanel" aria-labelledby="Encuestas-tab">

                        <table class=" table table-striped">
                            <thead><tr><th>ID</th><th>Fecha</th></tr></thead>
                            <tbody>
                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>

    </body></html>