<?php
require("./templates/header.php");

$texto_quem_somos = getMinTextQuemSomos();
$destaques = getAllDestaquesHome();

?>
    <main>

      <div class="container-fluid">
        <!-- Welcome -->
        <div class="row mt-5">
          <div class="col-12">
            <div class="spacer mx-auto"></div>
          </div>
        </div>
        <div class="row mt-5 pt-1">
          <div class="col-12 text-center">
            <h1 class="title"> Bem vindo à <br /> Cooperativa de Construção e Habitação Tripeira </h1>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-9 text mx-auto">
 
            <?php $texto_quem_somos; ?>

          </div>
        </div>


        <div class="row mt-4 pt-2 pb-5">
          <div class="col-12 text-center">
            <a href="sobre.php" class="seeMore1 d-flex justify-content-center align-items-center mx-auto">
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

            <?php foreach($destaques as $d):?>
              <div class="myCustomCard d-flex flex-column mb-5">

                <div class="row">
                  <div class="col-12">
                    <img class="w-100 h-100" src="<?= $d['imagem'];?>" alt="" />
                  </div>
                </div>

                <div class="border-card">

                  <div class="row px-2">
                    <div class="cardTitle col-12 py-3 px-4">
                      <h3><?= substr($d['imagem'],0, 70);?></h3>...
                    </div>
                  </div>
                
                  <div class="row px-2">
                    <div class="col-12 px-4">
                      <p> <?= $d['texto'];?></p>
                    </div>
                  </div>

                  <div class="btnSeeMore">
                    <div class="col-12 text-center">
                      <a href="destaque.php?id=<?= $d['id']?>" class="seeMore2 mx-auto d-flex justify-content-center align-items-center">
                        <span>VER MAIS</span>
                      </a>
                    </div>
                  </div>

                </div>
              </div>
            <?php endforeach; ?>

          </div>
        </div>
      </div>
      <main>

