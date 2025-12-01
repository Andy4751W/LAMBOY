<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Colonias</title>
       <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
       <link rel="stylesheet" href="${pageContext.request.contextPath}/css/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
  </head>
  <body style="background-color: rgb(0, 0, 0);">

    <div class="header-content container">
      <div class="swiper mySwiper-1">
        <div class="swiper-wrapper">

          <!-- SCANDAL -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">SCANDAL</h1>
                <p style="color: aliceblue;">Colonia para hombre Scandal por tan solo $300.00</p>
                <div class="botones">
                  <a href="Resumenscandall.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue;">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/SCANDAL.jpeg" alt="" />
                <img src="img/scsnl.webp" alt="" />
                <img src="img/scand.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- ONE MILLION -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">ONE MILLION</h1>
                <p style="color: aliceblue;">Colonia para hombre One MILLION por $150.00.</p>
                <div class="botones">
                  <a href="ResumenOnemillion.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue;">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/one million.jpeg" alt="" />
                <img src="img/one.webp" alt="" />
                <img src="img/ne.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- AQVARI CRYSTAL -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">AQVARI CRYSTAL</h1>
                <p style="color: aliceblue;">Colonia AQVARI CRYSTAL para mujer por $500.00.</p>
                <div class="botones">
                  <a href="ResumenAqvari.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue;">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/AQVARI CRYSTAL.jpeg" alt="" />
                <img src="img/AQVARI.jpg" alt="" />
              </div>
            </div>
          </div>

          <!-- MISS DIOR -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">MISS DIOR</h1>
                <p style="color: aliceblue;">Perfume MISS DIOR para mujer por $189.00.</p>
                <div class="botones">
                  <a href="ResumenMissdior.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue;">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/mis.webp" alt="" />
                <img src="img/missdi.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- COCO CHANNELL -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">COCO CHANNELL</h1>
                <p style="color: aliceblue;">Perfume COCO CHANNELL para mujer por $130.00.</p>
                <div class="botones">
                  <a href="Resumencocochannel.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue;">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/chann.webp" alt="" />
                <img src="img/channel.webp" alt="" />
                <img src="img/channell.webp" alt="" />
              </div>
            </div>
          </div>

          <!-- SAUVAGE ELIXIR -->
          <div class="swiper-slide">
            <div class="slider">
              <div class="slider-txt">
                <h1 style="color: aliceblue;">SAUVAGE ELIXIR</h1>
                <p style="color: aliceblue;">Perfume SAUVAGE ELIXIR para hombre por $399.00.</p>
                <div class="botones">
                  <a href="Resumensauvage.jsp" class="btn-1" style="color: aliceblue;">Comprar</a>
                  <a href="index.jsp" class="btn-1" style="color: aliceblue;">Inicio</a>
                </div>
              </div>
              <div class="slider-img">
                <img src="img/sauvae.webp" alt="" />
                <img src="img/sauvage.webp" alt="" />
                <img src="img/sauvg.webp" alt="" />
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
