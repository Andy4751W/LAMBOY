<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pines Virtuales</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
  </head>
  <body style="background-color: rgb(0, 0, 0);">

    <div class="header-content container">
      <div class="swiper mySwiper-1">
        <div class="swiper-wrapper">

          <!-- Disney+ -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">Disney +</h1>
                <p style="color: aliceblue;">Disney + 1 mes por $2.99.</p>
                <div class="botones">
                  <a href="ResumenDisney.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                   <!-- Formulario que agrega al carrito -->
        <form action="CarritoServlet" method="post" style="display:inline;">
          <input type="hidden" name="codigo" value="13"> <!-- ID del producto -->
          <input type="hidden" name="cantidad" value="1">
          <button type="submit" class="btn-1" style="color: black">Agregar al Carrito</button>
        </form>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/DINEY +.jpeg" alt="" />
              </div>
            </div>
          </div>

          <!-- Netflix -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">Netflix</h1>
                <p style="color: aliceblue;">Netflix 1 mes por $2.99.</p>
                <div class="botones">
                  <a href="ResumenNetflix.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                   <!-- Formulario que agrega al carrito -->
        <form action="CarritoServlet" method="post" style="display:inline;">
          <input type="hidden" name="codigo" value="14"> <!-- ID del producto -->
          <input type="hidden" name="cantidad" value="1">
          <button type="submit" class="btn-1" style="color: black">Agregar al Carrito</button>
        </form>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/netflix.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- HBO -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">HBO</h1>
                <p style="color: aliceblue;">HBO 1 mes por $2.99.</p>
                <div class="botones">
                  <a href="ResumenHBO.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                   <!-- Formulario que agrega al carrito -->
        <form action="CarritoServlet" method="post" style="display:inline;">
          <input type="hidden" name="codigo" value="15"> <!-- ID del producto -->
          <input type="hidden" name="cantidad" value="1">
          <button type="submit" class="btn-1" style="color: black">Agregar al Carrito</button>
        </form>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/HBO.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- Prime Video -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">Prime Video</h1>
                <p style="color: aliceblue;">Prime Video 1 mes por $2.99.</p>
                <div class="botones">
                  <a href="ResumenPrimevideo.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                   <!-- Formulario que agrega al carrito -->
        <form action="CarritoServlet" method="post" style="display:inline;">
          <input type="hidden" name="codigo" value="16"> <!-- ID del producto -->
          <input type="hidden" name="cantidad" value="1">
          <button type="submit" class="btn-1" style="color: black">Agregar al Carrito</button>
        </form>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/prime.jpeg" alt="" />
              </div>
            </div>
          </div>

          <!-- Crunchyroll -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">Crunchyroll</h1>
                <p style="color: aliceblue;">Crunchyroll 1 mes por $2.99.</p>
                <div class="botones">
                  <a href="ResumenCrunchyroll.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                   <!-- Formulario que agrega al carrito -->
        <form action="CarritoServlet" method="post" style="display:inline;">
          <input type="hidden" name="codigo" value="17"> <!-- ID del producto -->
          <input type="hidden" name="cantidad" value="1">
          <button type="submit" class="btn-1" style="color: black">Agregar al Carrito</button>
        </form>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/Crunchyroll.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- Star Plus -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">STAR PLUS</h1>
                <p style="color: aliceblue;">STAR PLUS 1 mes por $2.99.</p>
                <div class="botones">
                  <a href="ResumenStarPlus.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                   <!-- Formulario que agrega al carrito -->
        <form action="CarritoServlet" method="post" style="display:inline;">
          <input type="hidden" name="codigo" value="18"> <!-- ID del producto -->
          <input type="hidden" name="cantidad" value="1">
          <button type="submit" class="btn-1" style="color: black">Agregar al Carrito</button>
        </form>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/STAR+.webp" alt="" />
              </div>
            </div>
          </div>

        </div>
        <!-- Controles del slider -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="script.js"></script>
  </body>
</html>
