package Servlet.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import Servlet.modelo.ItemCarrito;
import Servlet.modelo.Producto;
import Servlet.modelo.Cliente; // Asegúrate de tener esta clase
import Servlet.dao.ConexionBD;

@WebServlet("/ConfirmarPagoServlet")
public class ConfirmarPagoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Recuperar carrito desde sesión
        Object obj = session.getAttribute("carrito");
        if (obj == null || !(obj instanceof List<?>)) {
            response.sendRedirect("carrito.jsp?error=CarritoVacio");
            return;
        }

        @SuppressWarnings("unchecked")
        List<ItemCarrito> carrito = (List<ItemCarrito>) obj;

        if (carrito.isEmpty()) {
            response.sendRedirect("carrito.jsp?error=CarritoVacio");
            return;
        }

        // Calcular total
        double total = 0;
        for (ItemCarrito item : carrito) {
            total += item.getSubtotal();
        }

        // Guardar compra en BD
        try (Connection conn = ConexionBD.getConnection()) {
            String sql = "INSERT INTO compras (producto, precio, cantidad, total) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            for (ItemCarrito item : carrito) {
                Producto p = item.getProducto();
                ps.setString(1, p.getNombre());
                ps.setDouble(2, p.getPrecioSalida());
                ps.setInt(3, item.getCantidad());
                ps.setDouble(4, item.getSubtotal());
                ps.executeUpdate();
            }

            // Guardar nombre del cliente en sesión (si existe)
            Cliente cliente = (Cliente) session.getAttribute("cliente");
            if (cliente != null) {
                session.setAttribute("clienteNombre", cliente.getNombre());
            } else {
                session.setAttribute("clienteNombre", "Invitado");
            }

            // Guardar total en sesión para mostrar en PAGOS.jsp
            session.setAttribute("totalCompra", total);

            // Redirigir al formulario de pago
            response.sendRedirect("PAGOS.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("carrito.jsp?error=ConexionBD");
        }
    }
}
