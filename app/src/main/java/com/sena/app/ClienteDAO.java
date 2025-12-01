package com.sena.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/proyecto_de_formacion?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Fresitas.1";

    // Método para insertar un cliente
    public void insertarCliente(Cliente cliente) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            String sql = "INSERT INTO clientes (Nombres, Tipo_de_cliente, domicilio, telefono, correo_electronico) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getTipoDeCliente());
            stmt.setString(3, cliente.getDomicilio());
            stmt.setString(4, cliente.getTelefono());
            stmt.setString(5, cliente.getCorreoElectronico());
            stmt.executeUpdate();
        }
    }

    // Método para listar todos los clientes
    public List<Cliente> listarClientes() throws Exception {
        List<Cliente> clientes = new ArrayList<>();
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            String sql = "SELECT codigo, Nombres, Tipo_de_cliente, domicilio, telefono, correo_electronico FROM clientes";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setCodigo(rs.getInt("codigo"));
                cliente.setNombre(rs.getString("Nombres")); // columna Nombres
                cliente.setTipoDeCliente(rs.getString("Tipo_de_cliente")); // columna Tipo_de_cliente
                cliente.setDomicilio(rs.getString("domicilio"));
                cliente.setTelefono(rs.getString("telefono"));
                cliente.setCorreoElectronico(rs.getString("correo_electronico"));
                clientes.add(cliente);
            }
        }
        return clientes;
    }

    // Método para obtener un cliente por código (para edición)
    public Cliente obtenerClientePorCodigo(int codigo) throws Exception {
        Cliente cliente = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            String sql = "SELECT codigo, Nombres, Tipo_de_cliente, domicilio, telefono, correo_electronico FROM clientes WHERE codigo=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codigo);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                cliente = new Cliente();
                cliente.setCodigo(rs.getInt("codigo"));
                cliente.setNombre(rs.getString("Nombres"));
                cliente.setTipoDeCliente(rs.getString("Tipo_de_cliente"));
                cliente.setDomicilio(rs.getString("domicilio"));
                cliente.setTelefono(rs.getString("telefono"));
                cliente.setCorreoElectronico(rs.getString("correo_electronico"));
            }
        }
        return cliente;
    }

    // Método para actualizar cliente
    public void actualizarCliente(Cliente cliente) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            String sql = "UPDATE clientes SET Nombres=?, Tipo_de_cliente=?, domicilio=?, telefono=?, correo_electronico=? WHERE codigo=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getTipoDeCliente());
            stmt.setString(3, cliente.getDomicilio());
            stmt.setString(4, cliente.getTelefono());
            stmt.setString(5, cliente.getCorreoElectronico());
            stmt.setInt(6, cliente.getCodigo());
            stmt.executeUpdate();
        }
    }

    // Método para eliminar cliente
    public void eliminarCliente(int codigo) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            String sql = "DELETE FROM clientes WHERE codigo=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, codigo);
            stmt.executeUpdate();
        }
    }
}
