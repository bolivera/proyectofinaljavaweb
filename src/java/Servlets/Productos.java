package Servlets;

import Beans.MProductos;
import Utils.ConexionDB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author belse
 */
@WebServlet(name = "Productos", urlPatterns = {"/Productos"})
public class Productos extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            String res = request.getParameter("detalle");
            String imagenes = request.getParameter("imagenes");

            if (res != null) {
                try {
                    PreparedStatement sta = ConexionDB.getConexion()
                            .prepareStatement(""
                                    + "SELECT *,c.nombre as categorianombre "
                                    + "from productos  as p  "
                                    + "left join categoria  as c on p.idCategoria = c.id "
                                    + "where p.id =" + res + "");
                    ResultSet rs = sta.executeQuery();

                    ArrayList<MProductos> lista = new ArrayList<>();
                    while (rs.next()) {
                        MProductos ca = new MProductos(
                                rs.getInt(1),
                                rs.getString(2),
                                rs.getString("categorianombre"),
                                rs.getDouble("precio"),
                                rs.getString("Descripcion"),
                                rs.getString("tallas"),
                                rs.getString("imagenes")
                        );
                        lista.add(ca);
                    }
                    request.setAttribute("c_detalle", lista);
                    request.getRequestDispatcher("pages/detalleProducto.jsp").forward(request, response);

                } catch (ServletException | IOException | SQLException e) {
                    System.out.println("Error: " + e);
                }

            } else {
                try {
                    PreparedStatement sta = ConexionDB.getConexion()
                            .prepareStatement("SELECT *,c.nombre as categorianombre "
                                    + "from productos  as p "
                                    + " left join categoria  as c on p.idCategoria = c.id where p.estado =1");
                    ResultSet rs = sta.executeQuery();

                    ArrayList<MProductos> lista = new ArrayList<>();
                    while (rs.next()) {
                        MProductos ca = new MProductos(
                                rs.getInt(1),
                                rs.getString(2),
                                rs.getString("categorianombre"),
                                rs.getDouble("precio"),
                                rs.getString("Descripcion"),
                                rs.getString("tallas"),
                                rs.getString("imagenes")
                        );
                        lista.add(ca);
                    }
                    request.setAttribute("c_lista", lista);
                    request.getRequestDispatcher("pages/todosProductos.jsp").forward(request, response);

                } catch (ServletException | IOException | SQLException e) {
                    System.out.println("Error: " + e);
                }
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
