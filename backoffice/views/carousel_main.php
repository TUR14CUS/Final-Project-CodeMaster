<?php

$carousel = getAllCarousel();

?>

<main class="container">

    <div class="row">
        <div class="col-12">
            <h1>Carousel</h1>
        </div>

        <div class="row">
            <div class="col-12 text-center">
                <form action="carousel_adicionar.php">
                    <input type="submit" value="Novo">
                </form>
            </div>
        </div>

        <div class="row">

            <div class="col-12 text-center my-3">

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Imagem</th>
                        <th>Ações</th>
                    </tr>

                    <?php foreach($carousel as $b): ?>
                        <tr>
                            <td><?= $b['id'];?></td>
                            <td><img src="<?= $b['imagem'];?>" width="200"/></td>
                            <td>
                                <form action="carousel_editar.php" class="d-inline-block">
                                    <button name="editar" value="<?= $b['id'];?>">Editar</button>
                                </form>
                                <form action="carousel_eliminar.php" class="d-inline-block">
                                    <button name="eliminar" value="<?= $b['id'];?>">Eliminar</button>
                            </td>
                        </tr>
                        
                    <?php endforeach; ?>
                </table>

            </div>

        </div>
    </div>

</main>