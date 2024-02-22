<?php

$form = isset($_GET['id']);

if ($form) {

    $id = intval($_GET['id']);
    $menu_simples = getMenuSimplesID($id);

    $form_2 = isset($_GET["titulo"], ["texto"]);

    if ($form_2) {

        $imagem = $_GET["titulo"];
        $texto = $_GET["texto"];
        iduSQL("UPDATE menu_simples SET titulo = '$titulo', texto = 'texto' WHERE id = $id");

        header("Location: menu_simples?id=" . $id . ".php");
        exit;
    }
} else {
    header("Location: menu_simples.php?id=" . $id);
    exit;
}
?>

<main class="container">

    <div class="row">
        <div class="col-12">
            <h1>Menu Simples - Editar ( <?= $menu_simples['titulo']; ?>)</h1>
        </div>

        <div class="row">
            <div class="col-12 text-center">
                <form action="">

                    <input type="hidden" name="id" value="<?= $id; ?>">

                    <input type="text" name="titulo" required placeholder="Título" value="<?= $menu_simples['titulo']; ?>">
                    <textarea name="texto" id="texto" cols="70" rows="20"><?= $menu_simples['texto']; ?></textarea>
                    <script>
                        ClassicEditor
                            .create(document.querySelector('#texto'))
                            .catch(error => {
                                console.error(error);
                            });
                    </script>

                    <br><br>
                    <input type="submit" value="editar">

                </form>
            </div>
        </div>



    </div>

</main>