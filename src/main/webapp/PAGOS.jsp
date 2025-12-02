<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Servlet.modelo.ItemCarrito" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>PAGO</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Inicio.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
</head>
<body style="background-color: rgb(0, 0, 0); color: aliceblue;">

    <div class="Formulario">
        <h1>Resumen de la compra</h1>

        <p>Cliente: <%= session.getAttribute("clienteNombre") %></p>
        <p>Total: $<%= session.getAttribute("totalCompra") %></p>

        <%
            List<ItemCarrito> carrito = (List<ItemCarrito>) session.getAttribute("carrito");
            if (carrito != null && !carrito.isEmpty()) {
        %>
        <table border="1" style="width:100%; text-align:center; color: aliceblue;">
            <tr>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Precio Unitario</th>
                <th>Subtotal</th>
            </tr>
            <%
                for (ItemCarrito item : carrito) {
            %>
            <tr>
                <td><%= item.getProducto().getNombre() %></td>
                <td><%= item.getCantidad() %></td>
                <td>$<%= item.getProducto().getPrecioSalida() %></td>
                <td>$<%= item.getSubtotal() %></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            } else {
        %>
        <p>⚠️ El carrito está vacío.</p>
        <%
            }
        %>

        <h2>Digite su Tarjeta de Crédito/Débito</h2>
        <form method="post" action="procesarPago.jsp">
            <div class="username">
                <input type="text" name="numeroTarjeta" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Número de la tarjeta</label>
            </div>

            <div class="username">
                <input type="text" name="fechaVencimiento" id="fechaVencimiento" maxlength="5" required
                       placeholder="MM/AA" style="color: aliceblue;" />
                <label style="color: rgb(84, 84, 84);">Fecha de vencimiento</label>
            </div>

            <div class="username">
                <input type="number" name="codigoSeguridad" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Código de seguridad</label>
            </div>

            <div class="botones">
                <button type="submit" class="btn-3" style="color: black;">Pagar</button>
                <a href="index.jsp" class="btn-3">Inicio</a>
            </div>
        </form>
    </div>

    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const campos = document.querySelectorAll(".username input");
        campos.forEach(input => {
            input.addEventListener("input", function () {
                const label = this.nextElementSibling;
                if (this.value.trim() !== "") {
                    label.style.opacity = "0";
                    label.style.visibility = "hidden";
                } else {
                    label.style.opacity = "1";
                    label.style.visibility = "visible";
                }
            });
        });

        const campo = document.getElementById("fechaVencimiento");
        campo.addEventListener("input", function () {
            let valor = this.value.replace(/\D/g, "");
            if (valor.length > 2) {
                valor = valor.slice(0, 2) + "/" + valor.slice(2, 4);
            }
            this.value = valor;
        });
    });
    </script>
</body>
</html>
