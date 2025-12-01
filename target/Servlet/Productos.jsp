<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Productos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</head>
<body style="background-color: rgb(0, 0, 0);">

    <header>
      <div class="menu container">
        <img class="logo-1" src="img/LOGO.jpeg" alt="" />
        <nav class="navbar">
            <ul>
              <li><a href="index.jsp" style="color: aliceblue">Inicio</a></li>
            </ul>
        </nav>
      </div>

      <div class="header-content container">
        <div class="swiper mySwiper-1">
          <div class="swiper-wrapper">

            <!-- Slide COLONIAS -->
            <div class="swiper-slide">
              <div class="slider">
                <div class="slider-txt">
                  <h1 style="color: aliceblue;">COLONIAS</h1>
                  <p style="color: aliceblue;">Colonias y fragancias tanto para el o ella.</p>
                  <div class="botones">
                    <a href="COLONIAS.jsp" class="btn-1" style="color: aliceblue">Ver más</a>
                    <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                  </div>
                </div>
                <div class="slider-img">
                  <img src="img/COLONIAS.jpeg" alt="" />
                </div>
              </div>
            </div>

            <!-- Slide PINES -->
            <div class="swiper-slide">
              <div class="slider">
                <div class="slider-txt">
                  <h1 style="color: aliceblue">PINES VIRTUALES</h1>
                  <p style="color: aliceblue"> 
                    Netflix, Spotify, Disney+, Star+, Crunchyroll, Prime Video, HBO y más...
                  </p>
                  <div class="botones">
                    <a href="PINES.jsp" class="btn-1" style="color: aliceblue">Ver más</a>
                    <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                  </div>
                </div>
                <div class="slider-img">
                  <img src="img/PINES VIRTUALES.jpeg" alt="" />
                </div>
              </div>
            </div>

            <!-- Slide CONSOLAS -->
            <div class="swiper-slide">
              <div class="slider">
                <div class="slider-txt">
                  <h1 style="color: aliceblue">CONSOLAS Y VIDEO JUEGOS</h1>
                  <p style="color: aliceblue">
                    Consolas y video juegos de XBOX, PLAYSTATION y NINTENDO.
                  </p>
                  <div class="botones">
                    <a href="Consolas y video juegos.jsp" class="btn-1" style="color: aliceblue">Ver más</a>
                    <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                  </div>
                </div>
                <div class="slider-img">
                  <img src="img/image.jpeg" alt="" />
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
    </header>

    <script src="${pageContext.request.contextPath}/js/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
