package com.sena.app;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cliente")
public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClienteDAO clienteDAO = new ClienteDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String tipoDeCliente = request.getParameter("tipo_de_cliente");
        String domicilio = request.getParameter("domicilio");
        String telefono = request.getParameter("telefono");
        String correoElectronico = request.getParameter("correo_electronico");

        Cliente cliente = new Cliente(nombre, tipoDeCliente, domicilio, telefono, correoElectronico);

        try {
            clienteDAO.insertarCliente(cliente);
            response.getWriter().println("Cliente registrado correctamente");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al registrar cliente: " + e.getMessage());
        }
    }
}
