<?php
function getDestaques(){
    $result = selectUnicSQL("SELECT * FROM noticias WHERE id = " . $_GET['id']);
    return $result;
}

$destaques = getDestaques();

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
                <h1 class="title">Noticias</h1>
				<h2 class="title" style="color:grey;"><?= $destaques['titulo']; ?></h2>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-9 text mx-auto">

                <?= $destaques['texto']; ?>

            </div>
        </div>
</main>
