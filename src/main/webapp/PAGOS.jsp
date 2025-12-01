<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>PAGO</title>  
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Inicio.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
</head>  
<body style="background-color: rgb(0, 0, 0);">  

    <div class="Formulario">  
        <h1 style="color: aliceblue;">Digite su Tarjeta de Crédito/Débito</h1>  

        <!-- El formulario ahora envía datos con "name" -->
        <form method="post" action="procesarPago.jsp">  
            
            <div class="username">  
                <input type="text" name="numeroTarjeta" style="color: aliceblue;" required>  
                <label style="color: rgb(84, 84, 84);">Número de la tarjeta</label>  
            </div>  

            <div class="username">
    <input type="text" name="fechaVencimiento" id="fechaVencimiento" maxlength="5" required
           placeholder="MM/AA" style="color: aliceblue;" />
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
});
</script> 
<script>
document.addEventListener("DOMContentLoaded", function () {
    const campo = document.getElementById("fechaVencimiento");

    campo.addEventListener("input", function () {
        let valor = this.value.replace(/\D/g, ""); // elimina todo lo que no sea número
        if (valor.length > 2) {
            valor = valor.slice(0, 2) + "/" + valor.slice(2, 4);
        }
        this.value = valor;
    });
});

</script>
</body>  
</html>
