

<main class="container">

    <div class="row">
        <div class="col-12">
            <h1>Home</h1>
        </div>

        <div class="row">
            <div class="col-12 text-center">
                <form action="carousel_adicionar.php">
                    <input type="submit" value="Novo">
                </form>
            </div>
        </div>

        <div class="row mt-4">

            <div class="col-12 text-center my-3">

                <h3>Bem Vindo <?= $user['nome']; ?></h3>
                <h5>Data do ultimo acesso: <?= $user("data_ultimo_acesso") ?></h5>

            </div>

        </div>
    </div>

</main>