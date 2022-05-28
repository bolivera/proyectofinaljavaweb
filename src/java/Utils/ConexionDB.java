package Utils;

import java.sql.*;

public class ConexionDB {

    public static Connection getConexion() {
        Connection con = null;
        try {
            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:7360/BD-DOMIMAN?user=root&password=D3s4rr0ll0");
            System.out.println("Connection success!!!");

        } catch (SQLException e) {
            System.out.println("Error: " + e);
            e.printStackTrace();
        }

//        String cadena = "jdbc:mysql://localhost/BD-DOMIMAN?user=root&password=D3s4rr0ll0";
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection(cadena);
//            System.out.println("Conexion exitosa");
//        } catch (ClassNotFoundException | SQLException e) {
//            System.out.println("Error:" + e);
//        }
        return con;
    }

    public static void main(String[] args) {
        getConexion();
    }

}
