<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Inicio.css">
    <script src="${pageContext.request.contextPath}/js/funciones.js"></script>
<body>
    <div class="Formulario">
        <h1 style="color: aliceblue;">Registrarme</h1>
        
        <!-- El formulario envía datos al Servlet registrarUsuario -->
        <form action="registrarUsuario" method="post">
            
            <!-- Nombre -->
            <div class="username">
                <input type="text" name="nombre" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Nombre y Apellidos</label>
            </div>  

            <!-- Tipo de Cliente -->
            <div class="username">
    <select name="Tipo_de_cliente" required style="color: white; background-color: black; border: none; font-size: 16px; width: 100%; padding: 10px;">
        <option value="Cliente frecuente" style="color: black;">Cliente frecuente</option>
        <option value="Cliente VIP" style="color: black;">Cliente VIP</option>
        <option value="Cliente distribuidor" style="color: black;">Cliente distribuidor</option>
    </select>
</div>


            <!-- Domicilio -->
            <div class="username">
                <input type="text" name="direccion" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Domicilio</label>
            </div>

            <!-- Teléfono -->
            <div class="username">
                <input type="text" name="telefono" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Número de Teléfono</label>
            </div>

            <!-- Correo -->
            <div class="username">
                <input type="email" name="correo" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Correo electrónico</label>
            </div>

            <!-- Contraseña -->
            <div class="username">
                <input type="password" name="password" style="color: aliceblue;" required>
                <label style="color: rgb(84, 84, 84);">Contraseña</label>
            </div>

            <!-- Botón -->
            <div class="botones">
                <input type="submit" value="Registrarme" style="color: black;" class="btn-2">
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
});
</script>
</body>
</html>
