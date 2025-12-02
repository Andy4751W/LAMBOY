<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Servlet.modelo.ItemCarrito" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Carrito</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <style>
        body {
            background-color: black;
            color: aliceblue;
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            color: aliceblue;
        }
        th, td {
            border: 1px solid aliceblue;
            padding: 10px;
            text-align: center;
        }
        h2, h3 {
            color: aliceblue;
        }
        .boton {
            background-color: aliceblue;
            color: black;
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }
        .boton:hover {
            background-color: #dbefff;
        }
    </style>
</head>
<body>

<%
    List<ItemCarrito> carrito = (List<ItemCarrito>) session.getAttribute("carrito");
    double total = 0;
%>

<h2>Tu carrito</h2>
<table>
    <tr>
        <th>Producto</th>
        <th>Cantidad</th>
        <th>Precio Unitario</th>
        <th>Subtotal</th>
        <th>Acción</th>
    </tr>
<%
    if (carrito != null && !carrito.isEmpty()) {
        for (int i = 0; i < carrito.size(); i++) {
            ItemCarrito item = carrito.get(i);
            total += item.getSubtotal();
%>
    <tr>
        <td><%= item.getProducto().getNombre() %></td>
        <td><%= item.getCantidad() %></td>
        <td>$<%= item.getProducto().getPrecioSalida() %></td>
        <td>$<%= item.getSubtotal() %></td>
        <td>
            <form action="EliminarItemServlet" method="post" style="display:inline;">
                <input type="hidden" name="indice" value="<%= i %>">
                <button type="submit" class="boton" onclick="return confirm('¿Eliminar este producto del carrito?')">🗑️ Eliminar</button>
            </form>
        </td>
    </tr>
<%
        }
    } else {
%>
    <tr>
        <td colspan="5">⚠️ El carrito está vacío.</td>
    </tr>
<%
    }
%>
</table>

<h3>Total: $<%= total %></h3>

<form action="ConfirmarPagoServlet" method="post">
    <input type="submit" value="Finalizar compra" class="boton">
</form>

</body>
</html>
