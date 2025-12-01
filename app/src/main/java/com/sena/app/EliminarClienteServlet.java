package com.sena.app;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/eliminarCliente")
public class EliminarClienteServlet extends HttpServlet {
    private ClienteDAO clienteDAO = new ClienteDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            clienteDAO.eliminarCliente(codigo);
            response.sendRedirect("listaClientes");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al eliminar cliente: " + e.getMessage());
        }
    }
}
