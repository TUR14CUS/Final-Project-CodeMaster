<?php
  include_once 'header.php';
  $pageTitle = "Home";
  $css = "static/home.css";
?>

<!-- Carousel -->
      <div class="row">
        <div class="col-12 p-0">
          <div id="carouselExampleDark" class="carousel carousel-dark slide">
            <div class="carousel-indicators">
              <button type="button"data-bs-target="#carouselExampleDark"data-bs-slide-to="0"class="active"aria-current="true"aria-label="Slide 1"></button>
              <button
                type="button"
                data-bs-target="#carouselExampleDark"
                data-bs-slide-to="1"
                aria-label="Slide 2"
              ></button>
              <button
                type="button"
                data-bs-target="#carouselExampleDark"
                data-bs-slide-to="2"
                aria-label="Slide 3"
              ></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="10000">
                <img
                  src="static/img/BannerHome.png"
                  class="d-block w-100"
                  alt="..."
                />
                <div class="myShadow"></div>
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img
                  src="static/img/BannerDestaques.png"
                  class="d-block w-100"
                  alt="..."
                />
                <div class="myShadow"></div>
              </div>

              <div class="carousel-item">
                <img
                  src="static/img/BannerDestaque1.png"
                  class="d-block w-100"
                  alt="..."
                />
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
            <a
              href=""
              class="seeMore1 d-flex justify-content-center align-items-center mx-auto"
            >
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
            <div class="myCustomCard d-flex flex-column">
              <div class="row">
                <div class="col-12">
                  <img
                    class="w-100"
                    src="static/img/destaque1.png"
                    alt=""
                  />
                </div>
              </div>
              <!--Card 1-->
              <div class="border-card">
                <div class="row px-2">
                  <div class="col-12 py-3 px-4">
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
                      nisi...
                    </p>
                  </div>
                </div>

                <div class="btnSeeMore">
                  <div class="col-12 text-center">
                    <a
                      href=""
                      class="seeMore2 mx-auto d-flex justify-content-center align-items-center"
                    >
                      <span>VER MAIS</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 1 -->
            <!-- Card 2 -->
            <div class="myCustomCard d-flex flex-column">
              <div class="row">
                <div class="col-12">
                  <img
                    class="w-100"
                    src="static/img/destaque2.png"
                    alt=""
                  />
                </div>
              </div>

              <div class="border-card">
                <div class="row px-2">
                  <div class="col-12 py-3 px-4">
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
                    <a
                      href=""
                      class="seeMore2 mx-auto d-flex justify-content-center align-items-center"
                    >
                      <span>VER MAIS</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 2 -->
            <!-- Card 3 -->
            <div class="myCustomCard d-flex flex-column">
              <div class="row">
                <div class="col-12">
                  <img
                    class="w-100"
                    src="static/img/destaque3.png"
                    alt=""
                  />
                </div>
              </div>

              <div class="border-card">
                <div class="row px-2">
                  <div class="col-12 py-3 px-4">
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
                    <a
                      href=""
                      class="seeMore2 mx-auto d-flex justify-content-center align-items-center"
                    >
                      <span>VER MAIS</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 3 -->
            <!-- Card 4 -->
            <div class="myCustomCard d-flex flex-column">
              <div class="row">
                <div class="col-12">
                  <img
                    class="w-100"
                    src="static/img/destaque4.png"
                    alt=""
                  />
                </div>
              </div>

              <div class="border-card">
                <div class="row px-2">
                  <div class="col-12 py-3 px-4">
                    <h3>
                      Vila do conde
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
                    <a
                      href=""
                      class="seeMore2 mx-auto d-flex justify-content-center align-items-center"
                    >
                      <span>VER MAIS</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 4 -->
            <!-- Card 5 -->
            <div class="myCustomCard d-flex flex-column">
              <div class="row">
                <div class="col-12">
                  <img
                    class="w-100"
                    src="static/img/destaque5.png"
                    alt=""
                  />
                </div>
              </div>

              <div class="border-card">
                <div class="row px-2">
                  <div class="col-12 py-3 px-4">
                    <h3>
                      Famalicão
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
                    <a
                      href=""
                      class="seeMore2 mx-auto d-flex justify-content-center align-items-center"
                    >
                      <span>VER MAIS</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 5 -->
            <!-- Card 6 -->
            <div class="myCustomCard d-flex flex-column">
              <div class="row">
                <div class="col-12">
                  <img
                    class="w-100"
                    src="static/img/destaque6.png"
                    alt=""
                  />
                </div>
              </div>

              <div class="border-card">
                <div class="row px-2">
                  <div class="col-12 py-3 px-4">
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
                    <a
                      href=""
                      class="seeMore2 mx-auto d-flex justify-content-center align-items-center"
                    >
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

<?php
  include_once 'footer.php';
?>
