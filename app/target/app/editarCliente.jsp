<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sena.app.Cliente" %>
<html>
<head>
    <title>Editar Cliente</title>
</head>
<body>
<h2>Editar Cliente</h2>

<%
    Cliente cliente = (Cliente) request.getAttribute("cliente");
    if (cliente != null) {
%>
<form action="editarCliente" method="post">
    <!-- Código oculto para identificar al cliente -->
    <input type="hidden" name="codigo" value="<%= cliente.getCodigo() %>">

    <label>Nombres:</label>
    <input type="text" name="nombre" value="<%= cliente.getNombre() %>" required><br><br>

    <label>Tipo de Cliente:</label>
    <select name="tipo_de_cliente" required>
        <option value="Cliente frecuente" <%= "Cliente frecuente".equals(cliente.getTipoDeCliente()) ? "selected" : "" %>>Cliente frecuente</option>
        <option value="Cliente VIP" <%= "Cliente VIP".equals(cliente.getTipoDeCliente()) ? "selected" : "" %>>Cliente VIP</option>
        <option value="Cliente distribuidor" <%= "Cliente distribuidor".equals(cliente.getTipoDeCliente()) ? "selected" : "" %>>Cliente distribuidor</option>
    </select><br><br>

    <label>Domicilio:</label>
    <input type="text" name="domicilio" value="<%= cliente.getDomicilio() %>"><br><br>

    <label>Teléfono:</label>
    <input type="text" name="telefono" value="<%= cliente.getTelefono() %>"><br><br>

    <label>Correo Electrónico:</label>
    <input type="email" name="correo_electronico" value="<%= cliente.getCorreoElectronico() %>"><br><br>

    <input type="submit" value="Actualizar">
</form>
<%
    } else {
%>
<p>No se encontró el cliente para editar.</p>
<%
    }
%>

<a href="listaClientes">Volver a la lista</a>
</body>
</html>
