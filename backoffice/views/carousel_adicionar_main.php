<?php

$form = isset($_GET["imagem"]);

if ($form) {

    $imagem = $_GET["imagem"];
    iduSQL("INSERT INTO carousel (imagem) VALUES ('$imagem')");

    header("Location: carousel.php");
    exit;

}
?>

<main class="container">

    <div class="row">
        <div class="col-12">
            <h1>Carousel - Novo</h1>
        </div>

        <div class="row">
            <div class="col-12 text-center">
                <form action="">

                    <input type="text" name=""imagem required placeholder="imagem">
                    <a target="_blank" href="http//localhost/contrucao_e_habitacao/tinyfilemanager/tinyfilemanager.php">

                        <button type="button">Gestor de ficheiro</button>
                    </a>
                    <br><br>
                    <input type="submit" value="registar">

                </form>
            </div>
        </div>



    </div>

</main>