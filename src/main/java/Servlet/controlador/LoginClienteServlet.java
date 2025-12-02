package Servlet.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import Servlet.dao.ClienteDAO;
import Servlet.modelo.Cliente;

@WebServlet("/loginClienteServlet")
public class LoginClienteServlet extends HttpServlet {
    private ClienteDAO clienteDAO = new ClienteDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Capturar datos del formulario
            String correo = request.getParameter("correo");
            String password = request.getParameter("Password");

            // Validar cliente en la BD
            Cliente cliente = clienteDAO.validarCliente(correo, password);

            if (cliente != null) {
                // Cliente válido → crear sesión
                HttpSession session = request.getSession();
                
                // Guardar objeto cliente completo
                session.setAttribute("cliente", cliente);
                
                // Guardar atributos individuales para usarlos en compras
                session.setAttribute("clienteCodigo", cliente.getCodigo());       // ID del cliente
                session.setAttribute("clienteNombre", cliente.getNombre()); // Nombre del cliente

                // Redirigir a página principal
                response.sendRedirect("index.jsp");
            } else {
                // Cliente inválido → regresar al login con mensaje
                response.sendRedirect("login.jsp?error=Credenciales incorrectas");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al iniciar sesión: " + e.getMessage());
        }
    }
}
