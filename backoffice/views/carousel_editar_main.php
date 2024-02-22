<?php

$form = isset($_GET['editar']);

if ($form) {

    $editar = intval($_GET['editar']);
    $carousel = getCarouselID($editar);

    $form_2 = isset($_GET["imagem"]);

    if ($form_2) {

        $imagem = $_GET["imagem"];
        iduSQL("UPDATE carousel SET imagem = '$imagem' WHERE id = $editar");

        header("Location: carousel.php");
        exit;
    }
} else {
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

                    <input type="hidden" name="editar" value="<?= $editar; ?>">

                    <input type="text" name="imagem" required placeholder="imagem" value="<?= $carousel['imagem']; ?>">
                    <a target="_blank" href="http//localhost/contrucao_e_habitacao/tinyfilemanager/tinyfilemanager.php">

                        <button type="button">Gestor de ficheiro</button>
                    </a>
                    <br><br>
                    <input type="submit" value="editar">

                </form>
            </div>
        </div>



    </div>

</main>