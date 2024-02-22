<?php

$contctos = getAllContacts();

?>

<footer class="container-fluid onebox">
          <!--Contacts-->
          <div class="row">
            <div class="col-12 p-0 contacts">
              <div class="contacts-shadow h-100">
                <div class="whiteSpacer mx-auto"></div>
                <div class="contacts-title mt-4 mt-md-1">Contactos</div>
                <div id="contact-list">
                  <div class=" contact-icon">
                    <img src="static/img/buttons_icons/tel.svg" alt="" />
                    <div class="contact-text"><?= $contactos['telefone'];?></div>
                  </div>
                  <div class="contact-icon">
                    <img src="static/img/buttons_icons/loc.svg" alt="" />
                    <div class="contact-text"><?= $contactos['morada'];?></div>
                  </div>
                  <div class="contact-icon">
                    <img src="static/img/buttons_icons/mail.svg" alt="" />
                    <div class="contact-text email"><?= $contactos['email'];?></div>
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
                <div id="google-maps-display" style="height:100%; width:100%;max-width:100%;">
                  <iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Rua+Passo+Manuel,+59-1.º+4000-384+porto&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe>
                </div>
                <a class="google-map-html" href="https://www.bootstrapskins.com/themes" id="authorize-map-data">premium bootstrap themes</a>
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
                  <a href="">
                    <img src="static/img/buttons_icons/facebook.svg" alt="" />
                    <div class="bottom-text mt-5">Siga-nos no Facebook</div>
                  </a>
                </div>
                <div class="big-spacer"></div>
                <div class="subnav row mt-5">
                  <nav class="col-11 text-end pe-5">
                    <a class="<?= ($actual_menu == 'home') ? 'active' : '' ?>" href="home.php">HOME</a>
                    <a href="sobre.php">QUEM SOMOS</a>
                    <a href="sobre.php">SÓCIOS</a>
                    <a href="noticias.php">NOTÍCIAS</a>
                    <a href="destaques.php">DESTAQUES</a>
                    <a href="empreendimentos.php">EMPREENDIMENTOS</a>
                    <a href="ferias.php">CENTRO DE FÉRIAS</a>
                    <a href="contactos.php">CONTACTOS</a>
                  </nav>
                </div>
                <div class="copyright col-8 mx-auto text-start">
                  <a href="<?= $contactos['facebook'];?>">
                    <p class=""> Copyright &copy; <?php date('Y'); ?> Grupo Mediamaster. Todos os direitos reservados. </p>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!--Bottom-->
        </footer>
        <script src="./static/bootstrap.min.js"></script>
  </body>
</html>