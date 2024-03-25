<?php

require_once "../requirements.php";


$carousel = getAllCarousel();

?>

<main class="container">

    <div class="row">
        <div class="col-12">
            <h1>Carousel</h1>
        </div>

        <div class="row">
            <div class="col-12 text-center ">
                <form action="carousel_adicionar.php">
                    <input type="submit" value="Novo" class="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-7">
                </form>
            </div>
        </div>

        <div class="row">
            <div class="col-10 mx-auto d-flexgap-4 flex-wrap">
                <?php foreach ($carousel as $b) : ?>
                    <div class="w-full mx-auto px-4 pt-4 max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                        <div class="flex flex-col items-center pb-4">
                            <img class="mb-3 shadow-lg" src="<?= $b['imagem']; ?>" alt="Bonnie image" />
                            <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">ID: <?= $b['id']; ?></h5>
                            <div class="flex mt-4 md:mt-6 gap-5">
                                <form action="carousel_editar.php" class="inline-flex items-center px-4 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                    <button name="editar" value="<?= $b['id']; ?>">Editar</button>
                                </form>
                                <form action="carousel_eliminar.php" class="inline-flex items-center px-4 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                    <button name="eliminar" value="<?= $b['id']; ?>">Eliminar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <br><br>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</main>