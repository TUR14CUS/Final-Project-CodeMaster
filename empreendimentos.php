<?php
require('templates/header_2.php');

function getempreendimentos(){
    $result = selectUnicSQL("SELECT * FROM empreendimentos WHERE id = " . $_GET['id']);
    return $result;
}

$empreendimentos = getempreendimentos();

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
                <h1 class="title">Empreendimentos</h1>
				<h2 class="title" style="color:grey;"><?= $empreendimentos['titulo']; ?></h2>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-9 text mx-auto">

                <?= $empreendimentos['texto']; ?>

            </div>
        </div>
</main>

<?php require('templates/footer.php'); ?>