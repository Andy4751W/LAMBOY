package Servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Servlet.modelo.Usuario;

public class LoginDao {

    // Método para validar usuario con correo y contraseña
    public Usuario validarUsuario(String correo, String password) throws Exception {
        String sql = "SELECT * FROM usuarios WHERE correo=? AND password=?";

        try (Connection con = ConexionBD.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, correo);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Usuario(
                        rs.getString("nombre"),
                        rs.getString("telefono"),
                        rs.getString("correo"),
                        rs.getString("password")
                    );
                }
            }
        }
        return null;
    }
}
