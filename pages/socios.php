<?php

$socios = getSocios();

?>

<main>
    <div class="container-fluid">

        <div class="row mt-5">
            <div class="col-12">
                <div class="spacer mx-auto"></div>
            </div>
        </div>
        <div class="row mt-5 pt-1">
            <div class="col-12 text-center">
                <h1 class="title"><?= $socios['titulo']; ?></h1>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-9 text mx-auto">

                <?= $socios['texto']; ?>

            </div>
        </div>
</main>