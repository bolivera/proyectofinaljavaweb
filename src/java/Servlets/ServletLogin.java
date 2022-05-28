package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Utils.ConexionDB;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

/**
 *
 * @author belse
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {

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
        String op = request.getParameter("op");
        request.getRequestDispatcher("pages/admin/login.jsp").forward(request, response);

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

        String usu = request.getParameter("txtUsu");
        String pas = request.getParameter("txtPas");
        try {
            PreparedStatement psta = ConexionDB.getConexion().
                    prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            psta.setString(1, usu);
            psta.setString(2, pas);
            ResultSet rs = psta.executeQuery();
            if (rs.next()) {
                HttpSession sesionOk = request.getSession();

                sesionOk.setAttribute("nombre", rs.getString("name"));
                sesionOk.setAttribute("perfil", rs.getString("email"));
                this.getServletContext().getRequestDispatcher("/pages/admin/productos.jsp").forward(request, response);

            } else {
                request.setAttribute("msg", "Usuario o contraseña Incorrectos");
                RequestDispatcher d = request.getRequestDispatcher("/pages/admin/login.jsp");
              
            }
            rs.close();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }

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
