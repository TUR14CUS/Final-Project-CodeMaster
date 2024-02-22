<?php

require_once("base_dados.php");
require_once("helpers/carousel_helper.php");

$carousel = getAllCarousel();


$form = isset($_POST["nome"]) && isset($_POST["email"]) && isset($_POST["mensagem"]);

if ($form) {

    $email_formulario = "fosege5681@ricorit.com";

    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $mensagem = "
        <ul>
            <li>Nome: ($nome)</li>
            <li>E-mail: ($email)</li>
            <li>Mensagem: $_POST[mensagem]</li>
        </ul>
    ";

    $headers = "MIME-Version: 1.0\r\nContent-type:text/html;charset=UTF-8\r\n";

    if (empty($_POST["receber_copia"])) {
        mail($email_formulario, "Contacto do Site", $mensagem, $headers);
    } else {
        mail("$email_formulario, $email", "Contacto do Site", $mensagem, $headers);
    }

    header("Location: index.php");
}

?>

    <div class="main container-fluid my-5">

        <div class="row">
            <div class="col-12 text-center">

                <form action="" method="POST">

                    <input type="text" name="nome" placeholder="Nome" required autofocus>
                    <br><br>
                    <input type="email" name="email" placeholder="E-mail" required>
                    <br><br>
                    <textarea name="mensagem" cols="80" rows="7" placeholder="Mensagem" required></textarea>
                    <br><br>
                    <input type="checkbox" name="receber_copia" id="receber_copia">
                    <label for="receber_copia">Desejo receber uma cópia deste e-mail</label>
                    <br><br>
                    <div class="g-recaptcha" data-sitekey="6Le7q3wpAAAAAMPtEqpO9_Tzy1z7ML2NwM_RyxiN"></div>
                    <br><br>
                    <input type="submit" value="Enviar">

                </form>

            </div>
        </div>

    </div>
