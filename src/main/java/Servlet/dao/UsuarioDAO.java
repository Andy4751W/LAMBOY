package Servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Servlet.modelo.Cliente;
import Servlet.modelo.Usuario;

/**
 * Clase DAO para realizar operaciones CRUD sobre la tabla usuarios.
 * Aplica el patrón DAO para separar la lógica de acceso a datos.
 */
public class UsuarioDAO {

    // Método para insertar un nuevo usuario
    public void insertarUsuario(Usuario usuario) throws Exception {
        String sql = "INSERT INTO usuarios (nombre, telefono, correo, password) VALUES (?, ?, ?, ?)";
        try (Connection con = ConexionBD.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            // Asignar parámetros al PreparedStatement
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getTelefono());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.executeUpdate();
        }
    }

    //  Método para validar login
    public Cliente validarCliente(String correo, String Password) throws Exception {
    String sql = "SELECT * FROM clientes WHERE Correo_Electronico=? AND Password=?";
    try (Connection con = ConexionBD.getConnection();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setString(1, correo);
        ps.setString(2, Password);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setCodigo(rs.getInt("Codigo"));
                cliente.setNombre(rs.getString("Nombres"));
                cliente.setTipoCliente(rs.getString("Tipo_de_cliente"));
                cliente.setDireccion(rs.getString("Domicilio"));
                cliente.setTelefono(rs.getString("Telefono"));
                cliente.setCorreo(rs.getString("Correo_Electronico"));
                cliente.setPassword(rs.getString("Password"));
                return cliente;
            }
        }
    }
    return null; // si no encontró nada
}
// Aquí puedes añadir métodos adicionales como listar(), buscarPorCorreo(), eliminar(), actualizar()
}
