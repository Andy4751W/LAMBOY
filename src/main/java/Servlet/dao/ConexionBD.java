package Servlet.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionBD {
    private static final String URL = "jdbc:mysql://localhost:3306/proyecto_de_formacion";
    private static final String USER = "root";
    private static final String PASSWORD = "Fresitas.1";

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
