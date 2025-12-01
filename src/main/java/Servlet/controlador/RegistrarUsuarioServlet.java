package Servlet.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Servlet.dao.ClienteDAO;
import Servlet.modelo.Cliente;

@WebServlet("/registrarUsuario")
public class RegistrarUsuarioServlet extends HttpServlet {
    private ClienteDAO clienteDAO = new ClienteDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Capturar datos del formulario
            String nombre = request.getParameter("nombre");
            String tipoCliente = request.getParameter("Tipo_de_cliente"); // select en JSP
            String direccion = request.getParameter("direccion");         // input en JSP
            String telefono = request.getParameter("telefono");
            String correo = request.getParameter("correo");
            String password = request.getParameter("password");

            // Crear objeto Cliente
            Cliente cliente = new Cliente();
            cliente.setNombre(nombre);          // Nombres
            cliente.setTipoCliente(tipoCliente); // Tipo_de_cliente
            cliente.setDireccion(direccion);     // Domicilio
            cliente.setTelefono(telefono);       // Telefono
            cliente.setCorreo(correo);           // Correo_Electronico
            cliente.setPassword(password);       // Password
            // Insertar en la BD
            clienteDAO.insertarCliente(cliente);

            // Redirigir al login después de registrar
            response.sendRedirect("login.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al registrar cliente: " + e.getMessage());
        }
    }
}
