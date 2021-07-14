/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Utilidades.Database;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author camil
 */
@WebServlet(urlPatterns = {"/Modulos_control"})
public class Modulos_control extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String path= request.getServletContext().getRealPath("/");
        Database.path=path;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            /* TODO output your page here. You may use following sample code. */
            String modulo = (request.getParameter("m") != null) ? request.getParameter("m").toString() : null;
            String opcion = "";
            if (request.getParameter("op") != null) {
                opcion = request.getParameter("op").toString();
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
            request.getRequestDispatcher("css/cssdefault.jsp").include(request, response);
            out.println("<title>ERP Integral </title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container-fluid\" style=\"padding: 0px\">");
            out.println("<div class=\"row\">");
            request.getRequestDispatcher("componentes/healer.jsp").include(request, response);
            out.println("</div>");
            out.println("<div class=\"row\">");
            out.println("<div class=\"col-2 border\" style=\"padding : 0px\">");
            switch (modulo) {
                case "cli":
                    request.getRequestDispatcher("componentes/menu_mod_CLi.jsp").include(request, response);
                    break;
                case "ven":
                    request.getRequestDispatcher("componentes/menu_mod_Ventas.jsp").include(request, response);
                    break;
                     case "com":
                    request.getRequestDispatcher("componentes/menu_mod_Compras.jsp").include(request, response);
                    break;
                     case "inv":
                    request.getRequestDispatcher("componentes/menu_mod_Inventario.jsp").include(request, response);
                    break;
                     case "fin":
                    request.getRequestDispatcher("componentes/menu_mod_Finanzas.jsp").include(request, response);
                    break;
                     case "adm":
                    request.getRequestDispatcher("componentes/menu_mod_Admin.jsp").include(request, response);
                    break;
                default:
                    //aqui va error404
                    out.println("<h2> ERROR DE MODULO</h2>");
                    break;
            }

            out.println("</div>");
            out.println("<div class=\"col-10\" style=\"background: #F9F9F9\">");
            //aqui abajo va el contenido  
            switch (opcion) {
                case "feed":
                    request.getRequestDispatcher("Clientes/Feedback.jsp").include(request, response);
                    break;
                case "His":
                    request.getRequestDispatcher("Clientes/Historial_clientes.jsp").include(request, response);
                    break;
                case "modcli":
                    request.getRequestDispatcher("Clientes/ModificarCliente.jsp").include(request, response);
                    break;
                case "modemp":
                    request.getRequestDispatcher("Clientes/ModificarEmpresa.jsp").include(request, response);
                    break;
                case "regcli":
                    request.getRequestDispatcher("Clientes/RegistrarCliente.jsp").include(request, response);
                    break;
                case "regemp":
                    request.getRequestDispatcher("Clientes/RegistrarEmpresa.jsp").include(request, response);
                    break;
                case "ord":
                    request.getRequestDispatcher("Clientes/ordenServicio.jsp").include(request, response);
                    break;
                case "def":
                    request.getRequestDispatcher("Clientes/DefinicionCriterios.jsp").include(request, response);
                    break;
                case "tab":
                    request.getRequestDispatcher("Clientes/TablaFidelizacion.jsp").include(request, response);
                    break;
                case "cobinf":
                    request.getRequestDispatcher("Clientes/Cobranza-informacion-del-cliente.jsp").include(request, response);
                    break;
                case "cobpag":
                    request.getRequestDispatcher("Clientes/cobranza-pagospendientes.jsp").include(request, response);
                    break;
                default:

                    break;
            }
            out.println("</div>");
            out.println("</div>");
            request.getRequestDispatcher("componentes/bottom_bar.jsp").include(request, response);
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
