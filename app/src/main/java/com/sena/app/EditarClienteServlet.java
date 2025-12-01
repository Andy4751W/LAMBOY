package com.sena.app;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/editarCliente")
public class EditarClienteServlet extends HttpServlet {
    private ClienteDAO clienteDAO = new ClienteDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            Cliente cliente = clienteDAO.obtenerClientePorCodigo(codigo);

            if (cliente != null) {
                request.setAttribute("cliente", cliente);
                request.getRequestDispatcher("editarCliente.jsp").forward(request, response);
            } else {
                response.getWriter().println("Cliente no encontrado con código: " + codigo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al cargar cliente: " + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            String nombre = request.getParameter("nombre");
            String tipoDeCliente = request.getParameter("tipo_de_cliente");
            String domicilio = request.getParameter("domicilio");
            String telefono = request.getParameter("telefono");
            String correoElectronico = request.getParameter("correo_electronico");

            Cliente cliente = new Cliente(nombre, tipoDeCliente, domicilio, telefono, correoElectronico);
            cliente.setCodigo(codigo);

            clienteDAO.actualizarCliente(cliente);
            response.sendRedirect("listaClientes");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al actualizar cliente: " + e.getMessage());
        }
    }
}
