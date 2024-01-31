<!DOCTYPE html>
<html lang="pt">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Free Web tutorials">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="John Doe">
    <title> <?php echo $pageTitle; ?> </title>
    <link rel="stylesheet" href="static/bootstrap.min.css">
    <link rel="stylesheet" href="static/style.css">
    <link rel="stylesheet" href="static/fonts/fontes.css">
    <link rel="stylesheet" href="static/templates/header.css">
    <link rel="stylesheet" href="static/templates/footer.css">
    <link rel="stylesheet" href="static/templates/responsive.css">
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
                    <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> EMPREENDIMENTOS </a>
                    <ul class="dropdown-menu" id="dropdown-menu-mobile">
                      <li>
                        <a class="dropdown-item active" href="#">Canidelo - Vila Nova de Gaia</a>
                      </li>
                      <li>
                        <hr class="dropdown-divider">
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Barralha - Sº da Hora Matosinhos</a>
                      </li>
                      <li>
                        <hr class="dropdown-divider">
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Contomil - Porto</a>
                      </li>
                      <li>
                        <hr class="dropdown-divider">
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Vila do Conde</a>
                      </li>
                      <li>
                        <hr class="dropdown-divider">
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Famalicão</a>
                      </li>
                      <li>
                        <hr class="dropdown-divider">
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Madalena - V. N. Gaia</a>
                      </li>
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
            <a class="" href="#" type="button" data-bs-toggle="dropdown" aria-expanded="false"> EMPREENDIMENTOS </a>
            <ul class="dropdown-menu">
              <li>
                <a class="dropdown-item" href="#">Canidelo - Vila Nova de Gaia</a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li>
                <a class="dropdown-item" href="#">Barralha - Sº da Hora Matosinhos</a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li>
                <a class="dropdown-item" href="#">Contomil - Porto</a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li>
                <a class="dropdown-item" href="#">Vila do Conde</a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li>
                <a class="dropdown-item" href="#">Famalicão</a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li>
                <a class="dropdown-item" href="#">Madalena - Vila Nova de Gaia</a>
              </li>
            </ul>
          </div>
          <a href="#">CENTRO DE FÉRIAS</a>
          <a href="#">CONTACTOS</a>
        </nav>
        <!-- Desktop Navbar  -->
    </header>
