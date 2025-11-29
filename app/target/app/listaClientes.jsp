<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.sena.app.Cliente" %>
<html>
<head>
    <title>Lista de Clientes</title>
</head>
<body>
<h2>Clientes Registrados</h2>
<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>Código</th>
        <th>Nombres</th>
        <th>Tipo de Cliente</th>
        <th>Domicilio</th>
        <th>Teléfono</th>
        <th>Correo Electrónico</th>
        <th>Acciones</th>
    </tr>
    <%
        List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes");
        if (clientes != null && !clientes.isEmpty()) {
            for (Cliente c : clientes) {
    %>
    <tr>
        <td><%= c.getCodigo() %></td>
        <td><%= c.getNombre() %></td>
        <td><%= c.getTipoDeCliente() %></td>
        <td><%= c.getDomicilio() %></td>
        <td><%= c.getTelefono() %></td>
        <td><%= c.getCorreoElectronico() %></td>
        <td>
            <a href="editarCliente?codigo=<%= c.getCodigo() %>">Editar</a> |
            <a href="eliminarCliente?codigo=<%= c.getCodigo() %>">Eliminar</a>
        </td>
    </tr>
    <%
            }
        } else {
    %>
    <tr>
        <td colspan="7">No hay clientes registrados.</td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
