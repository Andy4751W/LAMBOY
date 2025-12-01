package Servlet.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Servlet.modelo.Cliente;

public class ClienteDAO {

    // Método para insertar un nuevo cliente
    public void insertarCliente(Cliente cliente) throws Exception {
        Connection con = ConexionBD.getConnection();
        String sql = "INSERT INTO clientes (Nombres, Tipo_de_cliente, Domicilio, Telefono, Correo_Electronico, Password) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, cliente.getNombre());
        ps.setString(2, cliente.getTipoCliente());
        ps.setString(3, cliente.getDireccion());
        ps.setString(4, cliente.getTelefono());
        ps.setString(5, cliente.getCorreo());
        ps.setString(6, cliente.getPassword());
        ps.executeUpdate();
        ps.close();
        con.close();
    }

    // ✅ Método para validar login de cliente
    public Cliente validarCliente(String correo, String password) throws Exception {
        Connection con = ConexionBD.getConnection();
        String sql = "SELECT * FROM clientes WHERE Correo_Electronico=? AND password=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, correo);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        Cliente cliente = null;
        if (rs.next()) {
            cliente = new Cliente();
            cliente.setCodigo(rs.getInt("Codigo"));
            cliente.setNombre(rs.getString("Nombres"));
            cliente.setTipoCliente(rs.getString("Tipo_de_cliente"));
            cliente.setDireccion(rs.getString("Domicilio"));
            cliente.setTelefono(rs.getString("Telefono"));
            cliente.setCorreo(rs.getString("Correo_Electronico"));
        }

        rs.close();
        ps.close();
        con.close();

        return cliente; // devuelve null si no encontró nada
    }
}
