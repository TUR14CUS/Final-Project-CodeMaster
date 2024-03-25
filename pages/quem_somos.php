<?php

$quem_somos = getQuemSomos();

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
            <h1 class="title"><?= $quem_somos['titulo']; ?></h1>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-12">
            <div class="text-center"><?= $quem_somos['texto']; ?></div>
        </div>
    </div>
</div>

</main>