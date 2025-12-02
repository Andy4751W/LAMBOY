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
              <li><a href="carrito.jsp" style="color: aliceblue">Ver carrito</a></li>
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

    <!-- 🛒 Sección de compra directa -->
    <section class="container" style="background-color:white; padding:20px; margin-top:20px;">
        <h2>Agregar productos al carrito</h2>
        <form action="CarritoServlet" method="post">
            <label for="codigo">Selecciona un producto:</label>
            <select name="codigo" id="codigo">
                <option value="1">Play 5 - $22.250</option>
                <option value="2">Xbox Series X - $9.100</option>
                <option value="3">Nintendo Switch - $7.850</option>
                <option value="4">Elden ring - $3.24</option>
                <option value="5">Fifa 25 - $3.24</option>
                <option value="6">MARIO KART DELUXE - $3.24</option>
                <option value="7">Scandall - $310</option>
                <option value="8">One Million - $160</option>
                <option value="9">AQVARI CRYSTAL - $510</option>
                <option value="10">MISS DIOR - $199</option>
                <option value="11">COCO CHANNELL - $140</option>
                <option value="12">SAUVAGE ELIXIR - $409</option>
                <option value="13">Disney + - $2.99</option>
                <option value="14">Netflix - $2.99</option>
                <option value="15">HBO - $2.99</option>
                <option value="16">Prime Video - $2.99</option>
                <option value="17">Crunchyroll - $2.99</option>
                <option value="18">STAR PLUS - $2.99</option>
            </select>
            <br><br>
            <label for="cantidad">Cantidad:</label>
            <input type="number" name="cantidad" id="cantidad" value="1" min="1">
            <br><br>
            <button type="submit">Agregar al carrito</button>
        </form>
        <br>
        <a href="carrito.jsp">Ver carrito</a>
    </section>

    <script src="${pageContext.request.contextPath}/js/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
