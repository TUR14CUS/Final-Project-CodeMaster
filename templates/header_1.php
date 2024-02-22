<?php

require_once('requirements.php');

$carousel = getAllCarousel();

$empreendimentos = getAllEmpreendimentosMenu();


?>

<!DOCTYPE html>
<html lang="pt">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="CodeMaster Final Project">
  <meta name="author" content="Ricardo Santos">
  <title> <?= $actual_menu; ?> </title>
  <link rel="stylesheet" href="./static/bootstrap.min.css">
  <link rel="stylesheet" href="./static/style.css">
  <link rel="stylesheet" href="./static/fonts/fontes.css">
  <link rel="stylesheet" href="./static/header.css">
  <link rel="stylesheet" href="./static/footer.css">
  <link rel="stylesheet" href="./static/responsive.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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
            <button onclick="menuMobile()" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon" id="closed-menu"></span>
              <svg xmlns="http://www.w3.org/2000/svg" id="opened-menu" width="16" height="16" fill="currentColor" class="bi bi-x-lg d-none" viewBox="0 0 16 16">
                <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
              </svg>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="index.php">HOME</a>
                </li>
                <li class="mobile-divider"></li>
                <li class="nav-item">
                  <a class="nav-link" href="quem_somos.php">QUEM SOMOS</a>
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
                  <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> EMPREENDIMENTOS </a>
                  <ul class="dropdown-menu" id="dropdown-menu-mobile">

                    <?php foreach ($empreendimentos as $i => $e) : ?>

                      <?php if ($i > 0) : ?>

                        <li>
                          <hr class="dropdown-divider">
                        </li>

                      <?php endif; ?>

                      <li>
                        <a class="dropdown-item" href="empreendimentos.php?id=<?= $e['id']; ?>"><?= $e['titulo']; ?></a>
                      </li>

                    <?php endforeach; ?>

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
        <a href="index.php">HOME</a>
        <a href="quem_somos.php">QUEM SOMOS</a>
        <a href="socios.php">SÓCIOS</a>
        <a href="noticias.php">NOTÍCIAS</a>
        <a href="destaques.php">DESTAQUES</a>
        <div class="dropdown">
          <a class="" href="#" type="button" data-bs-toggle="dropdown" aria-expanded="false"> EMPREENDIMENTOS </a>
          <ul class="dropdown-menu">

            <?php foreach ($empreendimentos as $i => $e) : ?>

              <?php if ($i > 0) : ?>

                <li>
                  <hr class="dropdown-divider">
                </li>

              <?php endif; ?>

              <li>
                <a class="dropdown-item" href="empreendimentos.php?id=<?= $e['id']; ?>"><?= $e['titulo']; ?></a>
              </li>

            <?php endforeach; ?>

          </ul>
        </div>
        <a href="ferias.php">CENTRO DE FÉRIAS</a>
        <a href="#">CONTACTOS</a>
      </nav>
      <!-- Desktop Navbar  -->
      <!-- Carousel -->
      <div class="row">
        <div class="col-12 p-2">
          <div id="carouselExampleDark" class="carousel carousel-dark slide">
            <div class="carousel-indicators">

              <?php foreach ($carousel as $i => $c) : ?>

                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="<?= $i; ?>" class="<?= ($i == 0) ? "active" : ""; ?>" aria-current="true" aria-label="<?= $i + 1; ?>"></button>

              <?php endforeach; ?>
            </div>
            <div class="carousel-inner">

              <?php foreach ($carousel as $i => $c) : ?>

                <div class="carousel-item <?= ($i == 0) ? "active" : ""; ?>" data-bs-interval="10000">
                  <img src="<?= $c['imagem']; ?>" class="d-block w-100" alt="..." />
                  <div class="myShadow"></div>
                </div>

              <?php endforeach; ?>

            </div>
          </div>
        </div>
      </div>
      <!-- Carousel -->
    </div>
  </header>