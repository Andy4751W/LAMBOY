<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Inicio.css">
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</head>
<body>
    <div class="Formulario">
        <h1 style="color: aliceblue;">Inicio de Sesión</h1>
        
        <!-- Ahora el formulario envía datos al Servlet loginCliente -->
        <form action="loginClienteServlet" method="post">
            <div class="username">
                <input type="email" name="correo" style="color: aliceblue;" required/>
                <label style="color: rgb(84, 84, 84);">Correo electrónico</label>
            </div>
            <div class="username">
                <input type="password" name="Password" style="color: aliceblue;" required/>
                <label style="color: rgb(84, 84, 84);">Contraseña</label>
            </div>
            <div class="recordar" style="color: aliceblue;">¿Olvidó su contraseña?</div>
            
            <div class="botones">
                <!-- Botón real de envío -->
                <input type="submit" value="Iniciar" style="color: Black;" class="btn-1">
            </div>
            
            <div class="registrarse" style="color: aliceblue;">
                Quiero <a href="registroUsuario.jsp">Registrarme</a>
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
