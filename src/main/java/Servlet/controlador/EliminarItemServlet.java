package Servlet.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import Servlet.modelo.ItemCarrito;

@WebServlet("/EliminarItemServlet")
public class EliminarItemServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        @SuppressWarnings("unchecked")
        List<ItemCarrito> carrito = (List<ItemCarrito>) session.getAttribute("carrito");

        String indiceStr = request.getParameter("indice");
        if (carrito != null && indiceStr != null) {
            try {
                int indice = Integer.parseInt(indiceStr);
                if (indice >= 0 && indice < carrito.size()) {
                    carrito.remove(indice);
                    session.setAttribute("carrito", carrito);
                }
            } catch (NumberFormatException e) {
    System.err.println("Error: índice inválido al eliminar item del carrito → " + e.getMessage());
}

        }

        response.sendRedirect("carrito.jsp");
    }
}
