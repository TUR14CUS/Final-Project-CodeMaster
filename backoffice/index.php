<?php

require_once "./requirements.php";

$form = isset($_POST['login'], $_POST['senha']);
if ($form) {
    $login = $_POST['login'];
    $senha = $_POST['senha'];

    if (doLogin($login, $senha)) {
        header("Location: home.php");
        exit;
    }
}

?>

<!DOCTYPE html>
<html lang="pt">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="CodeMaster Final Project">
  <meta name="author" content="Ricardo Santos">
  <title> Backoffice </title>
  <link rel="stylesheet" href="static/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>
    
    <div class="container-fluid">

        <div class="row">
            <div class="col-12 my-4 text-center">
                <h1>Backoffice</h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12 text-center">

            <?php if($form): ?>
                <div class="alert alert-danger text-center" role="alert">
                    <p>Utilizador ou senha inválidos</p>
                </div>
            <?php endif; ?>

            <form action="" method="POST" id="login">
                <input type="text" name="login" required placeholder="Login" autofocus>
                <br><br>
                <input type="password" name="senha" required placeholder="senha">
                <br><br>
                <input type="submit" value="Entrar">
            </form>
        </div>
    </div>

</body>
</html>