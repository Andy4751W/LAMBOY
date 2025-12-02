<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Procesar Pago</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Inicio.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
</head>
<body style="background-color: rgb(0,0,0); color: aliceblue;">

    <div class="Formulario">
        <h1>Resultado del Pago</h1>

        <%
            // Recuperar parámetros enviados desde PAGOS.jsp
            String numeroTarjeta = request.getParameter("numeroTarjeta");
            String fechaVencimiento = request.getParameter("fechaVencimiento");
            String codigoSeguridad = request.getParameter("codigoSeguridad");

            // Validación simple
            if (numeroTarjeta != null && fechaVencimiento != null && codigoSeguridad != null) {
                if (!numeroTarjeta.trim().isEmpty() && numeroTarjeta.length() >= 4) {
        %>
                    <p>✅ Pago procesado correctamente.</p>
                    <p>Tarjeta terminada en: <%= numeroTarjeta.substring(numeroTarjeta.length() - 4) %></p>
                    <p>Fecha de vencimiento: <%= fechaVencimiento %></p>
                    <p>Gracias por su compra.</p>
        <%
                } else {
        %>
                    <p>⚠️ Número de tarjeta inválido. Debe tener al menos 4 dígitos.</p>
        <%
                }
            } else {
        %>
                <p>⚠️ Faltan datos de pago. Verifique tarjeta, fecha y código de seguridad.</p>
        <%
            }
        %>

        <div class="botones">
            <a href="index.jsp" class="btn-3">Volver al inicio</a>
        </div>
    </div>

</body>
</html>
