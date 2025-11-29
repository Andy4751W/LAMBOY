<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registro de Cliente</title>
</head>
<body>
  <h2>Formulario de Cliente</h2>
  <form action="cliente" method="post">
    <label>Nombre:</label>
    <input type="text" name="nombre" required><br><br>

    <label>Tipo de Cliente:</label>
    <select name="tipo_de_cliente" required>
      <option value="Cliente frecuente">Cliente frecuente</option>
      <option value="Cliente VIP">Cliente VIP</option>
      <option value="Cliente distribuidor">Cliente distribuidor</option>
    </select><br><br>

    <label>Domicilio:</label>
    <input type="text" name="domicilio"><br><br>

    <label>Teléfono:</label>
    <input type="text" name="telefono"><br><br>

    <label>Correo Electrónico:</label>
    <input type="email" name="correo_electronico"><br><br>

    <input type="submit" value="Registrar">
  </form>
</body>
</html>
