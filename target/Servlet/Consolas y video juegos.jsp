<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Consolas y Video Juegos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
  </head>
  <body style="background-color: rgb(0, 0, 0);">

    <div class="header-content container">
      <div class="swiper mySwiper-1">
        <div class="swiper-wrapper">

          <!-- Play 5 -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue">PLAY 5</h1>
                <p style="color: aliceblue">Play 5 slim de 1 tera por tan solo $22050.00</p>
                <div class="botones">
                  <a href="Resumenplay5.jsp" class="btn-1" style="color: aliceblue">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/PLAY 5.jpeg" alt="" />
                <img src="img/play.webp" alt="" />
                <img src="img/playy.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- Xbox -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue">Xbox One Series X</h1>
                <p style="color: aliceblue">Xbox One Series X de una tera por $9000.00.</p>
                <div class="botones">
                  <a href="resumenxbox.jsp" class="btn-1" style="color: aliceblue">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/XBOX SERIES X.jpeg" alt="" />
                <img src="img/xbox ser.webp" alt="" />
                <img src="img/xbox.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- Nintendo -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue">Nintendo SWITCH</h1>
                <p style="color: aliceblue">Nintendo Switch por $7700.00.</p>
                <div class="botones">
                  <a href="resumennintendo.jsp" class="btn-1" style="color: aliceblue">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/NINTENDO SWITCH.jpeg" alt="" />
                <img src="img/nintendos.webp" alt="" />
                <img src="img/nintendol.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- Elden Ring -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue">Elden RING</h1>
                <p style="color: aliceblue">Juego Elden RING para Xbox Series X por $2.99.</p>
                <div class="botones">
                  <a href="Resumenelden.jsp" class="btn-1" style="color: aliceblue">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/eldenn.webp" alt="" />
                <img src="img/eldenden.webp" alt="" />
                <img src="img/elden.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- FIFA 25 -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue">FIFA 25</h1>
                <p style="color: aliceblue">Juego Fifa 25 Para Play 5/4 por $2.99.</p>
                <div class="botones">
                  <a href="resumenFifa.jsp" class="btn-1" style="color: aliceblue">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/fia.webp" alt="" />
                <img src="img/fif.webp" alt="" />
                <img src="img/fifa.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- Mario Kart -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue">MARIO KART DELUXE 8</h1>
                <p style="color: aliceblue">Juego de Mario Kart Deluxe 8 para Nintendo Switch por $2.99.</p>
                <div class="botones">
                  <a href="ResumenMarioKart.jsp" class="btn-1" style="color: aliceblue">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/mario.webp" alt="" />
                <img src="img/mariok.webp" alt="" />
                <img src="img/mariokk.webp" alt="" />
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
