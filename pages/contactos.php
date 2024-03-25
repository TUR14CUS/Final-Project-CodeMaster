<?php

function getcontactos()
{
    $result = selectUnicSQL("SELECT * FROM contactos");
    return $result;
}

$contactos = getcontactos();

?>

<head>
    <style>
        .titulo_a {

            font-size: 35px;
            font-weight: bold;
        }

        .titulo_b {

            font-size: 20px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid black;
            border-radius: 5px;
        }

        textarea {
            height: 150px;
        }

        input[type="checkbox"] {
            margin-bottom: 10px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            border: 1px solid black;
            border-radius: 5px;
            cursor: pointer;
            background-color: white;
            float: right;
            width: 150px;
        }
    </style>
</head>

<main>
    <div style="margin-left: auto; margin-right: auto; width: 800px; padding-top: 100px; padding-bottom: 600px;">
        <div>
            <div style=" height:500px; width: 300px; float:left; ">

                <div class="titulo_a">MORADA</div>
                <div class="titulo_b"><?php echo $contactos['morada'] ?></div>
                <br>
                <div class="titulo_a">TELEFONE</div>
                <div class="titulo_b"><?php echo $contactos['telefone'] ?></div>
                <br>
                <div class="titulo_a">FACEBOOK</div>
                <div class="titulo_b"><?php echo $contactos['link_facebook'] ?></div>
                <br>
                <div class="titulo_a">E-MAIL</div>
                <div class="titulo_b"><?php echo $contactos['email'] ?></div>
            </div>
        </div>

        <div class="">
            <div style=" height:500px; width: 500px; float:right; ">
                <div class="container">
                    <form action="enviar_mensagem_contactos.php" method="POST" id="myForm">
                        <label for="nome">Nome:</label>
                        <input type="text" id="nome" name="nome" placeholder="Insira aqui o seu nome">
                        <br>
                        <label for="email">E-mail:</label>
                        <input type="text" id="email" name="email" placeholder="Insira aqui o seu e-mail">
                        <br>
                        <label for="telefone">Telefone:</label>
                        <input type="text" id="telefone" name="telefone" placeholder="Insira aqui o seu telefone">
                        <br>
                        <label for="assunto">Assunto:</label>
                        <input type="text" id="assunto" name="assunto" placeholder="Insira aqui o assunto">
                        <br>
                        <label for="mensagem">Mensagem:</label>
                        <textarea id="mensagem" name="mensagem" placeholder="Insira aqui a sua mensagem"></textarea>
                        <br>
                        <input type="checkbox" id="copia" name="copia">
                        <label for="copia">Quero receber uma cópia desta mensagem no meu e-mail</label>
                        <br>
                        <input type="submit" value="Enviar" onclick="submitForm()">
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>