/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
   response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String modulo= request.getParameter("m").toString();
           String opcion="";
           if(request.getParameter("op")!=null)opcion = request.getParameter("op").toString();
            /* TODO output your page here. You may use following sample code. */
            
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
            request.getRequestDispatcher("/css/cssdefault.jsp").include(request, response);
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container-fluid\">");
            out.println("<div class=\"row\">");
            request.getRequestDispatcher("/componentes/healer.jsp").include(request, response);
            out.println("</div>");
            out.println("<div class=\"row\">");
            out.println("<div class=\"col-2\">");
            switch(modulo){
            case "cli":
            request.getRequestDispatcher("/componentes/menu_mod.jsp").include(request, response);
            break;
            
            default:
                //aqui va error404
                out.println("<h2> ERROR DE MODULO</h2>");
           break;
            }
                    out.println("</div>");
            out.println("<div class=\"col-10\">");
            //aqui abajo va el contenido  
            switch(opcion){
                case "feed":
            request.getRequestDispatcher("/Clientes/Feedback.jsp").include(request, response);
                 break;
                case "His":
                    request.getRequestDispatcher("/Clientes/Historial_clientes.jsp").include(request, response);
                    break;
                    case "modcli":
                    request.getRequestDispatcher("/Clientes/ModificarCliente.jsp").include(request, response);
                    break;
                    case "modemp":
                    request.getRequestDispatcher("/Clientes/ModificarEmpresa.jsp").include(request, response);
                    break;
                    case "regcli":
                    request.getRequestDispatcher("/Clientes/RegistrarCliente.jsp").include(request, response);
                    break;
                    case "regemp":
                    request.getRequestDispatcher("/Clientes/RegistrarEmpresa.jsp").include(request, response);
                    break;
                    case "ord":
                    request.getRequestDispatcher("/Clientes/ordenServicio.jsp").include(request, response);
                    break;
                default:
                   //aqui va pagina por defecto
                    break;
            }
            out.println("</div>");
            out.println("</div>");
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
