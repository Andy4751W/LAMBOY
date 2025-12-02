package Servlet.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

import Servlet.modelo.Producto;
import Servlet.modelo.ItemCarrito;

@WebServlet("/CarritoServlet")
public class CarritoServlet extends HttpServlet {

    // Catálogo de productos de ejemplo
    List<Producto> catalogo = Arrays.asList(
    new Producto(1, 1, 1, "Play 5", "Slim 1TB", 10, 20000, 22250),
    new Producto(2, 2, 2, "Xbox Series X", "1TB", 8, 17000, 9100),
    new Producto(3, 3, 3, "Nintendo Switch", "OLED", 15, 14000, 7850),
    new Producto(4, 4, 4, "Elden ring", "Juego", 12, 12000, 3.24),
    new Producto(5, 5, 5, "Fifa 25", "Juego", 7, 10000, 3.24),
    new Producto(6, 6, 6, "MARIO KART DELUXE", "Juego", 20, 8000, 3.24),
    new Producto(7, 7, 7, "Scandall", "Colonia", 20, 8000, 310),
    new Producto(8, 8, 8, "One Million", "Colonia", 20, 8000, 160),
    new Producto(9, 9, 9, "AQVARI CRYSTAL", "Colonia", 20, 8000, 510),
    new Producto(10, 10, 10, "MISS DIOR", "Colonia", 20, 8000, 199),
    new Producto(11, 11, 11, "COCO CHANNELL", "Colonia", 20, 8000, 140),
    new Producto(12, 12, 12, "SAUVAGE ELIXIR", "Colonia", 20, 8000, 409),
    new Producto(13, 13, 13, "Disney +", "1 mes", 50, 299, 2.99),
    new Producto(14, 14, 14, "Netflix", "1 mes", 50, 299, 2.99),
    new Producto(15, 15, 15, "HBO", "1 mes", 50, 299, 2.99),
    new Producto(16, 16, 16, "Prime Video", "1 mes", 50, 299, 2.99),
    new Producto(17, 17, 17, "Crunchyroll", "1 mes", 50, 299, 2.99),
    new Producto(18, 18, 18, "STAR PLUS", "1 mes", 50, 299, 2.99)
);


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        Object obj = session.getAttribute("carrito");
        List<ItemCarrito> carrito = null;

        if (obj instanceof List<?>) {
            @SuppressWarnings("unchecked")
            List<ItemCarrito> tmp = (List<ItemCarrito>) obj;
            carrito = tmp;
        }
        if (carrito == null) {
            carrito = new ArrayList<>();
        }

        int codigoProducto = Integer.parseInt(request.getParameter("codigo"));
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        Producto producto = catalogo.stream()
                .filter(p -> p.getCodigo() == codigoProducto)
                .findFirst()
                .orElse(null);

        if (producto != null) {
            carrito.add(new ItemCarrito(producto, cantidad));
            session.setAttribute("carrito", carrito);
        }

        response.sendRedirect("carrito.jsp");
    }
}
