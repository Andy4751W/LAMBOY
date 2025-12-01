<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>index</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>

  <body>
    <header>
      <div class="menu container">
        <img class="logo-1" src="img/LOGO.jpeg" alt="" />
        <input type="checkbox" id="menu" />
        <label for="menu">
          <img src="img/menu.png" class="menu-icono" alt="" />
        </label>
        <nav class="navbar">
          <div class="menu-1">
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="login.jsp">Iniciar Sesión</a></li>
                <li><a href="Productos.jsp">Productos</a></li>
            </ul>
          </div>
          <img class="logo-2" src="img/LOGO.jpeg" alt="" />
          <div class="menu-2">
            <ul>
              <li><a href="#">Horario</a></li>
            </ul>
            <div class="socials">
              <a href="#">
                <div class="social">
                  <img src="img/s1.svg" alt="" />
                </div>
              </a>
              <a href="#">
                <div class="social">
                  <img src="img/s2.svg" alt="" />
                </div>
              </a>
              <a href="#">
                <div class="social">
                  <img src="img/s3.svg" alt="" />
                </div>
              </a>
            </div>
          </div>
        </nav>
      </div>

      <div class="header-content container">
        <div class="swiper mySwiper-1">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="slider">
                <div class="slider-txt">
                  <h1>COLONIAS</h1>
                  <p>Colonias y fragancias tanto para el o ella.</p>
                  <div class="botones">
                    <a href="COLONIAS.jsp" class="btn-1">Comprar</a>
                    <a href="index.jsp" class="btn-1">Inicio</a>
                  </div>
                </div>
                <div class="slider-img">
                  <img src="img/COLONIAS.jpeg" alt="" />
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="slider">
                <div class="slider-txt">
                  <h1>PINES VIRTUALES</h1>
                  <p>
                    Netflix,Spotify,DINEY plus, Star +,Crunchyroll, Prime Video, HBO y más...
                  </p>
                  <div class="botones">
                    <a href="PINES.jsp" class="btn-1">Comprar</a>
                    <a href="index.jsp" class="btn-1">Inicio</a>
                  </div>
                </div>
                <div class="slider-img">
                  <img src="img/PINES VIRTUALES.jpeg" alt="" />
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="slider">
                <div class="slider-txt">
                  <h1>CONSOLAS Y VIDEO JUEGOS</h1>
                  <p>
                    Consolas y video juegos de XBOX, PLAYSTATION y NINTENDO.
                  </p>
                  <div class="botones">
                    <a href="Consolas y video juegos.jsp" class="btn-1">Comprar</a>
                    <a href="index.jsp" class="btn-1">Inicio</a>
                  </div>
                </div>
                <div class="slider-img">
                  <img src="img/image.jpeg" alt="" />
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </header>

    <main class="products">
      <div class="tabs container">
        <input
          type="radio"
          name="tabs"
          id="tab1"
          checked="checked"
          class="tabInput"
          value="1"
        />
        <label for="tab1">COLONIAS</label>
        <div class="tab">
          <div class="swiper mySwiper-2" id="swiper1">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/one million.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>ONE MILLION</h4>
                    <p>Calidad premium</p>
                    <span class="price">$150.00</span>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/SCANDAL.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>SCANDAL</h4>
                    <p>Calidad premium</p>
                    <span class="price">$300.00</span>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/AQVARI CRYSTAL.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>AQVARI CRYSTAL</h4>
                    <p>Calidad premium</p>
                    <span class="price">$500.00</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
        </div>

            <input
              type="radio"
              name="tabs"
              id="tab2"
              checked="checked"
              class="tabInput"
              value="2"
        />
        <label for="tab2">ROPA</label>
        <div class="tab">
          <div class="swiper mySwiper-2" id="swiper2">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/STRADIVARIUS.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>CHAQUETA DE CUERO</h4>
                    <p>Calidad premium</p>
                    <span class="price">$1000.00</span>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/LUIS VUITTON.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>CHAQUETA DE POLIESTER</h4>
                    <p>Calidad premium</p>
                    <span class="price">$5000</span>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/SEVEN Y SEVEN.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>CHAQUETA DE JEAN</h4>
                    <p>Calidad premium</p>
                    <span class="price">$2500.00</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
        </div>

        <input
          type="radio"
          name="tabs"
          id="tab3"
          checked="checked"
          class="tabInput"
          value="3"
        />
        <label for="tab3">CONSOLAS Y VIDEOJUEGOS</label>
        <div class="tab">
          <div class="swiper mySwiper-3" id="swiper3">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/PLAY 5.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>PLAY 5 SLIM</h4>
                    <p>Calidad premium</p>
                    <span class="price">$22050.00</span>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/XBOX SERIES X.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>XBOX ONE</h4>
                    <p>Calidad premium</p>
                    <span class="price">$9000.00</span>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="product">
                  <div class="product-img">
                    <h4 style="color: aliceblue;">Nuevo</h4>
                    <img src="img/NINTENDO SWITCH.jpeg" alt="" />
                  </div>
                  <div class="product-txt">
                    <h4>NINTENDO</h4>
                    <p>Calidad premium</p>
                    <span class="price">$7700.00</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
        </div>
      </div>
    </main>

    <section class="info container">
      <div class="info-img">
        <img src="img/LOGO.jpeg" alt="" />
      </div>

      <div class="info-txt">
        <h2>Información</h2>
        <p>
          Somos una una empresa constituida legalmente, dedicada a la compra,
          venta, distribución e importación de productos, a nivel nacional. Su
          principal objetivo es ofrecer soluciones comerciales eficientes,
          adaptadas a las necesidades del mercado actual, asegurando calidad,
          precio competitivo y cumplimiento en tiempos de entrega. Desde sus
          inicios, la empresa ha trabajado con una amplia red de proveedores y
          clientes, consolidando su presencia en el sector comercial a través de
          una oferta diversificada que incluye productos electrónicos, artículos
          para el hogar, textiles, alimentos no perecederos, entre otros.
          Contamos con un equipo profesional orientado al servicio al cliente,
          así como con procesos logísticos y administrativos optimizados para
          garantizar operaciones seguras, ágiles y transparentes. Nuestro
          compromiso es construir relaciones comerciales duraderas basadas en la
          confianza, la responsabilidad y el crecimiento conjunto.
        </p>
        <a href="https://es.wikipedia.org/wiki/Mercado_libre" class="btn-2"
          >Mas información</a
        >
      </div>
    </section>

    <section class="horario">
      <div class="horario-info container">
        <h2>Horario</h2>
        <div class="horario-txt">
          <div class="txt">
            <h4>Dirección</h4>
            <p>Tv 74a #11-11 local 101</p>
            <p>cra 23 #22-222 local 506</p>
          </div>
          <div class="txt">
            <h4>Horario</h4>
            <p>Lunes a Viernes : 9 am - 6 pm</p>
            <p>Sabados a Domingos : 11 am - 4 pm</p>
          </div>
          <div class="txt">
            <h4>Telefono</h4>
            <p>3103003000</p>
            <p>3113223220</p>
          </div>
          <div class="txt">
            <h4>Redes Sociales</h4>
            <div class="socials">
              <a href="#">
                <div class="social">
                  <img src="img/s1.svg" alt="" />
                </div>
              </a>
              <a href="#">
                <div class="social">
                  <img src="img/s2.svg" alt="" />
                </div>
              </a>
              <a href="#">
                <div class="social">
                  <img src="img/s3.svg" alt="" />
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <iframe
        class="map"
        src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d15907.446925416714!2d-74.1592274!3d4.61874525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1ssalchimonster!5e0!3m2!1ses-419!2sco!4v1746642035416!5m2!1ses-419!2sco"
        width="100%"
        height="500"
        style="border: 0"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"
      ></iframe>
    </section>

    <footer class="footer container">
      <img class="logo-2" src="img/LOGO.jpeg" alt="" />
      <div class="links">
        <h4>Terminos y condiciones</h4>
      </div>
      <div class="links">
        <h4>Trabaja con nosotros</h4>
      </div>
      <div class="links">
        <h4>Ayuda/PQRS</h4>
      </div>
      <div class="links">
        <h4>Redes Sociales</h4>
        <div class="socials">
          <a href="#">
            <div class="social">
              <a href="#"><div class="social"><img src="img/s1.svg" alt="" /></div></a>
              <a href="#"><div class="social"><img src="img/s2.svg" alt="" /></div></a>
              <a href="#"><div class="social"><img src="img/s3.svg" alt="" /></div></a>
            </div>
          </div>
        </nav>
      </div>
    </footer>

    <script src="${pageContext.request.contextPath}/js/https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
  </body>
</html>
