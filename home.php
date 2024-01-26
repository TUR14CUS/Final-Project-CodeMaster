<!DOCTYPE html>
<html lang="pt">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?php echo $pageTitle; ?></title>
  <!-- Bootstrap -->
  <link rel="stylesheet" href="static/bootstrap.min.css">
  <script src="static/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <!-- Bootstrap -->
  <!--CSS-->
  <link rel="stylesheet" href="static/style.css">
  <link rel="stylesheet" href="static/fonts/fontes.css">
  <!--CSS-->
</head>

<body>
  <header class="container-fluid">
    <div class="row d-flex justify-content-center d-flex align-items-end flex-wrap">
      <!-- Logo -->
      <div class="col-12 pb-2 pe-4 pe-xl-5 col-lg-auto d-flex justify-content-between pb-3 pe-xl-5">
        <img src="static/img/logo.png" alt="logo" class="logo ps-3 ps-lg-0 pt-lg-0" />
        <!-- Logo -->
        <!-- Mobile Navbar -->
        <nav class="navbar navbar-expand-lg d-block d-lg-none" id="mobile-nav-bar">
          <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">


              <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="home.php">HOME</a>
                </li>

                <li class="mobile-divider"></li>

                <li class="nav-item">
                  <a class="nav-link" href="sobre.php">QUEM SOMOS</a>
                </li>


                <li class="mobile-divider"></li>

                <li class="nav-item">
                  <a class="nav-link" href="socios.php">SÓCIOS</a>
                </li>


                <li class="mobile-divider"></li>

                <li class="nav-item">
                  <a class="nav-link" href="noticias.php">NOTÍCIAS</a>
                </li>


                <li class="mobile-divider"></li>

                <li class="nav-item">
                  <a class="nav-link" href="destaques.php">DESTAQUES</a>
                </li>

                <li class="mobile-divider"></li>

                <li class="nav-item dropdown">
                  <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    EMPREENDIMENTOS
                  </a>

                  <ul class="dropdown-menu" id="dropdown-menu-mobile">

                    <li><a class="dropdown-item active" href="#">Canidelo - Vila Nova de Gaia</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Barralha - Sº da Hora Matosinhos</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Contomil - Porto</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Vila do Conde</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Famalicão</a></li>
                    <li>
                      <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Madalena - V. N. Gaia</a></li>
                  </ul>
                </li>

                <li class="mobile-divider"></li>


                <li class="nav-item">
                  <a class="nav-link" href="#">CENTRO DE FÉRIAS</a>
                </li>


                <li class="mobile-divider"></li>


                <li class="nav-item">
                  <a class="nav-link" href="#">CONTACTOS</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
      <!-- Mobile Navbar -->

      <!-- Desktop Navbar  -->
      <nav class="col-auto d-flex justify-content-center align-items-center gap-3 d-none d-lg-flex" id="nav-top">
        <a href="home.php">HOME</a>
        <a href="sobre.php">QUEM SOMOS</a>
        <a href="socios.php">SÓCIOS</a>
        <a href="noticias.php">NOTÍCIAS</a>
        <a href="destaques.php">DESTAQUES</a>
        <div class="dropdown">
          <a class="" href="#" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            EMPREENDIMENTOS
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Canidelo - Vila Nova de Gaia</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Barralha - Sº da Hora Matosinhos</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Contomil - Porto</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Vila do Conde</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Famalicão</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Madalena - Vila Nova de Gaia</a></li>
          </ul>
        </div>
        <a href="#">CENTRO DE FÉRIAS</a>
        <a href="#">CONTACTOS</a>
      </nav>
      <!-- Desktop Navbar  -->
  </header>
  <main>
    <!-- Carousel -->
    <div class="row">
      <div class="col-12 p-0">
        <div id="carouselExampleDark" class="carousel carousel-dark slide">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
              <img src="static/img/BannerHome.png" class="d-block w-100" alt="..." />
              <div class="myShadow"></div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
              <img src="static/img/BannerDestaques.png" class="d-block w-100" alt="..." />
              <div class="myShadow"></div>
            </div>

            <div class="carousel-item">
              <img src="static/img/BannerDestaque1.png" class="d-block w-100" alt="..." />
              <div class="myShadow"></div>
            </div>
          </div>
        </div>
      </div>
      <!-- Carousel -->
    </div>
    <div class="container-fluid">
      <!-- Welcome -->
      <div class="row mt-5">
        <div class="col-12">
          <div class="spacer mx-auto"></div>
        </div>
      </div>

      <div class="row mt-5 pt-1">
        <div class="col-12 text-center">
          <h1 class="title">
            Bem vindo à <br />
            Cooperativa de Construção e Habitação Tripeira
          </h1>
        </div>
      </div>

      <div class="row mt-5">
        <div class="col-9 text mx-auto">
          <p>
            Lorem ipsum dolor sit, amet consectetur adipisicing elit.
            Accusamus quas maiores debitis soluta non amet, provident saepe
            nostrum commodi? Aliquid error amet iste accusamus excepturi
            reprehenderit at explicabo suscipit omnis. Lorem ipsum dolor sit
            amet consectetur adipisicing elit. Molestiae harum eum tenetur
            dolore minima veritatis odit. Assumenda quis facilis expedita
            nihil saepe qui quo distinctio, velit totam ratione laboriosam
            officiis? Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Itaque voluptates officia amet reiciendis veritatis laborum atque
            placeat eligendi dolore delectus est consequatur, quae illo quam
            id nam exercitationem, ea porro?
            <br /><br />
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni
            minus asperiores animi corporis voluptates praesentium harum
            maiores voluptate, neque explicabo ad, molestias fugit culpa unde
            sapiente optio! Maxime, dignissimos? Dolorem. Lorem ipsum dolor
            sit amet consectetur adipisicing elit. Explicabo tenetur,
            inventore, magni distinctio accusantium omnis repellat dolorum
            enim temporibus ullam asperiores, expedita fugiat harum
            praesentium reiciendis consequuntur autem veniam cupiditate! Lorem
            ipsum dolor sit amet consectetur adipisicing elit. Nam nostrum
            iste exercitationem illum eius quaerat eveniet! Nihil modi velit
            delectus minus ipsa dolores tenetur dolorum? Minima quibusdam
            expedita laudantium eveniet! Lorem ipsum dolor sit amet
            consectetur adipisicing elit. Natus dicta expedita eum repellat
            sit dignissimos ipsum, accusamus repudiandae dolore iste! Quam
            quis beatae enim similique pariatur amet commodi tempore
            repellendus!
          </p>
        </div>
      </div>

      <div class="row mt-4 pt-2">
        <div class="col-12 text-center">
          <a href="" class="seeMore1 d-flex justify-content-center align-items-center mx-auto">
            <span>VER MAIS</span>
          </a>
        </div>
      </div>

      <div class="row mt-5">
        <div class="col-12">
          <div class="spacer mx-auto"></div>
        </div>
      </div>
      <!-- Welcome -->
      <!-- Cards -->
      <div class="row">
        <div class="col-12 text-center mt-4">
          <div class="title">Destaques</div>
        </div>
      </div>

      <div class="row mt-4 pt-2">
        <div class="col-10 mx-auto d-flex justify-content-center gap-4 flex-wrap">
          <div class="myCustomCard d-flex flex-column mb-5">
            <div class="row">
              <div class="col-12">
                <img class="w-100 h-100" src="static/img/destaque1.png" alt="" />
              </div>
            </div>
            <!--Card 1-->
            <div class="border-card">
              <div class="row px-2">
                <div class="cardTitle col-12 py-3 px-4">
                  <h3>
                    Canidelo - <br />
                    Vila Nova de Gaia
                  </h3>
                </div>
              </div>

              <div class="row px-2">
                <div class="col-12 px-4">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Earum sed dolore deleniti, aut quidem, adipisci aspernatur
                    nisi... lore
                  </p>
                </div>
              </div>

              <div class="btnSeeMore">
                <div class="col-12 text-center">
                  <a href="" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                    <span>VER MAIS</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Card 1 -->
          <!-- Card 2 -->
          <div class="myCustomCard d-flex flex-column mb-5">
            <div class="row">
              <div class="col-12">
                <img class="w-100 h-100" src="static/img/destaque2.png" alt="" />
              </div>
            </div>

            <div class="border-card">
              <div class="row px-2">
                <div class="cardTitle col-12 py-3 px-4">
                  <h3>
                    Barralha - Sº da Hora Matosinhos
                  </h3>
                </div>
              </div>

              <div class="row px-2">
                <div class="col-12 px-4">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Earum sed dolore deleniti, aut quidem, adipisci aspernatur
                    nisi...
                  </p>
                </div>
              </div>

              <div class="btnSeeMore">
                <div class="col-12 text-center">
                  <a href="" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                    <span>VER MAIS</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Card 2 -->
          <!-- Card 3 -->
          <div class="myCustomCard d-flex flex-column mb-5">
            <div class="row">
              <div class="col-12">
                <img class="w-100 h-100" src="static/img/destaque3.png" alt="" />
              </div>
            </div>

            <div class="border-card">
              <div class="row px-2">
                <div class="cardTitle col-12 py-3 px-4">
                  <h3>
                    Contomil - Porto
                  </h3>
                </div>
              </div>

              <div class="row px-2">
                <div class="col-12 px-4">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Earum sed dolore deleniti, aut quidem, adipisci aspernatur
                    nisi...
                  </p>
                </div>
              </div>

              <div class="btnSeeMore">
                <div class="col-12 text-center">
                  <a href="" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                    <span>VER MAIS</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Card 3 -->
          <!-- Card 4 -->
          <div class="myCustomCard d-flex flex-column mb-5">
            <div class="row">
              <div class="col-12">
                <img class="w-100 h-100" src="static/img/destaque4.png" alt="" />
              </div>
            </div>

            <div class="border-card">
              <div class="row px-2">
                <div class="cardTitle col-12 py-3 px-4">
                  <h3>
                    Vila do Conde
                  </h3>
                </div>
              </div>

              <div class="row px-2">
                <div class="col-12 px-4">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Earum sed dolore deleniti, aut quidem, adipisci aspernatur
                    nisi...
                  </p>
                </div>
              </div>

              <div class="btnSeeMore">
                <div class="col-12 text-center">
                  <a href="" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                    <span>VER MAIS</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Card 4 -->
          <!-- Card 5 -->
          <div class="myCustomCard d-flex flex-column mb-5">
            <div class="row">
              <div class="col-12">
                <img class="w-100 h-100" src="static/img/destaque5.png" alt="" />
              </div>
            </div>

            <div class="border-card">
              <div class="row px-2">
                <div class="cardTitle col-12 py-3 px-4">
                  <h3>
                    Famalição
                  </h3>
                </div>
              </div>

              <div class="row px-2">
                <div class="col-12 px-4">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Earum sed dolore deleniti, aut quidem, adipisci aspernatur
                    nisi...
                  </p>
                </div>
              </div>

              <div class="btnSeeMore">
                <div class="col-12 text-center">
                  <a href="" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                    <span>VER MAIS</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Card 5 -->
          <!-- Card 6 -->
          <div class="myCustomCard d-flex flex-column mb-5">
            <div class="row">
              <div class="col-12">
                <img class="w-100 h-100" src="static/img/destaque6.png" alt="" />
              </div>
            </div>

            <div class="border-card">
              <div class="row px-2">
                <div class="cardTitle col-12 py-3 px-4">
                  <h3>
                    Madalena - <br />
                    Vila Nova de Gaia
                  </h3>
                </div>
              </div>

              <div class="row px-2">
                <div class="col-12 px-4">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Earum sed dolore deleniti, aut quidem, adipisci aspernatur
                    nisi...
                  </p>
                </div>
              </div>

              <div class="btnSeeMore">
                <div class="col-12 text-center">
                  <a href="" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                    <span>VER MAIS</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Card 6 -->
        </div>
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-12">
        <div class="spacer mx-auto"></div>
      </div>
    </div>
    <main>
      <footer class="container-fluid">
        <!--Contacts-->
        <div class="row">
          <div class="col-12 p-0 contacts">
            <div class="contacts-shadow h-100">
              <div class="whiteSpacer mx-auto"></div>
              <div class="contacts-title mt-4">Contactos</div>

              <div id="contact-list"">

          <div class=" contact-icon">
                <img src="static/img/buttons_icons/tel.svg" alt="" />
                <div class="contact-text">222 088 761</div>
              </div>

              <div class="contact-icon">
                <img src="static/img/buttons_icons/loc.svg" alt="" />
                <div class="contact-text">Rua Passo Manuel, 59-1.º 4000-384 porto</div>
              </div>

              <div class="contact-icon">
                <img src="static/img/buttons_icons/mail.svg" alt="" />
                <div class="contact-text">cooptripeira@mail.telepac.pt</div>
              </div>
            </div>
          </div>
        </div>
        </div>
        <!--Contacts-->
        <!--Map-->
        <div class="row">
          <div class="col-12 p-0">
            <div style="overflow:hidden;max-width:100%;width:100%;height:503px;">
              <div id="google-maps-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Rua+Passo+Manuel,+59-1.º+4000-384+porto&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div><a class="google-map-html" href="https://www.bootstrapskins.com/themes" id="authorize-map-data">premium bootstrap themes</a>
              <style></style>
            </div>
          </div>
        </div>
        <!--Map-->
        <!--Bottom-->
        <div class="row mt-4">
          <div class="col-12 p-0 bottom">
            <div class="bottom-shadow h-100">

              <div class="bottom-icon mx-auto mt-5">
                <img src="static/img/buttons_icons/facebook.svg" alt="" />
                <div class="bottom-text mt-5">Siga-nos no Facebook</div>
              </div>
              <div class="big-spacer"></div>

              <div class="row mt-5">
                <nav class="col-11 text-end pe-5">
                  <a href="home.php">HOME</a>
                  <a href="sobre.php">QUEM SOMOS</a>
                  <a href="sobre.php">SÓCIOS</a>
                  <a href="noticias.php">NOTÍCIAS</a>
                  <a href="destaques.php">DESTAQUES</a>
                  <a href="empreendimentos.php">EMPREENDIMENTOS</a>
                  <a href="ferias.php">CENTRO DE FÉRIAS</a>
                  <a href="contactos.php">CONTACTOS</a>
                </nav>
              </div>
              <div class="copyright mt-5 offset-1 ">
                <a href="">
                  <span class="ps-5">
                    Copyright &copy; 2024 Grupo Mediamaster. Todos os direitos reservados.
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!--Bottom-->
      </footer>
</body>

</html>