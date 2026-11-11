package ec.edu.monster.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    private static final String URL = "jdbc:mariadb://localhost:3306/sigh_gr04_login?useSSL=false&serverTimezone=UTC";
    private static final String USER = "sigh_login_app";
    private static final String PASS = "CambiarEsta_Clave_123!";

    public static Connection obtenerConexion() throws SQLException {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("No se encontró el Driver JDBC de MariaDB", e);
        }
        return DriverManager.getConnection(URL, USER, PASS);
    }
}