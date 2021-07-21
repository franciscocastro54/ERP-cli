<%@page import="beans.Cliente"%>
<html>

    <head>





    </head>
    <body>
        <%
            Cliente cliente = null;
            if (request.getParameter("inputRut") != null) {
                if (!request.getParameter("inputRut").equals("")) {

                    cliente = new Cliente();
                    cliente.buscar(request.getParameter("inputRut"));
                    cliente.setRut(request.getParameter("inputRut"));
                    cliente.buscar_Deudas(-1);

                }
            }
        %>
        <form class="container-fluid" style="padding: 0px" action="Modulos_control?m=cli&op=cobinf" method="post" >
            <div class="row justify-content-center py-2">
                <h1 class="col-6 text center">Información del cliente</h1>
            </div>      

           
                <div class="row justify-content-center  align-items-center py-1">   
                    <div class="col-2">
                        <label class="">Rut:</label>
                    </div>
                    <div class="col-4">
                        <input name="inputRut" type="text" class="form-control" id="exampleFormControlInput1" placeholder="15223654-3"/>
                    </div>
                    <div class="col-2">
                        <button type="submit" class="form-control " id="exampleFormControlInput1" >Buscar</button>
                    </div>
                </div>
            </form>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Nombre:</label>
                </div>
                <div class="col-6">
                    <label id="labelNombre"></label>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Correo Electronico:</label>
                </div>
                <div class="col-6">
                    <label id="labelCorreo"></label>
                </div>
            </div>
            <div class="row justify-content-center  align-items-center py-1">   
                <div class="col-2 ">
                    <label class="">Telefono:</label>
                </div>
                <div class="col-6">
                    <label id="labelTelefono"></label>
                </div>
            </div>    
            <form class="container-fluid"> 
                <table class="table table-hover" class="col-6 align-items-center">
                    <div class="row justify-content-center  align-items-center  py-1">
                        <div class="col-6"> 
                            <h4 class="col-8 text-center">Información de deuda:</h4>
                            <thead>
                                <tr class="table-light">
                                    <th scope="col-6">ID</th>
                                    <th scope="col-6">Fecha</th>
                                    <th scope="col-6">Monto</th>
                                    <th scope="col-6">Estado</th>
                                    <th scope="col-6">Cliente</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    if (cliente != null) {
                                        for (int i = 0; i < cliente.getDeudas().size(); i++) {
                                            String[] fecha=cliente.getDeudas().get(i).getFecha().split(" ");
                                            out.println("<tr>"
                                                    + "<td>" + cliente.getDeudas().get(i).getId() + "</td>"
                                                    + "<td>" + fecha[0] + "</td>"
                                                    + "<td>" + cliente.getDeudas().get(i).getMonto() + "</td>"
                                                    + "<td>" + cliente.getDeudas().get(i).getEstado() + "</td>"
                                                    + "<td>" + cliente.getDeudas().get(i).getCliente() + "</td>"
                                                    + "</tr>");
                                        }
                                    }

                                %>
                            </tbody>
                        </div> 
                    </div> 
                </table>
                <%              if (cliente != null) {
                        out.println("<script>"
                                + "\nconst labelNombre=document.getElementById('labelNombre');"
                                + "\nconst labelCorreo=document.getElementById('labelCorreo');"
                                + "\nconst labelTelefono=document.getElementById('labelTelefono');"
                                + "\nlabelNombre.innerHTML='" + cliente.getNombre()+ "'"
                                + "\nlabelCorreo.innerHTML='" + cliente.getMail() + "'"
                                + "\nlabelTelefono.innerHTML='" + cliente.getTelefono() + "'"
                                + "</script>");
                    }


                %>
                </body>
                </html>
