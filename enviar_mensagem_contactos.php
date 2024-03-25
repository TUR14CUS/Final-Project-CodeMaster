<?php

require_once "requirements.php";

function saveMessage($nome, $assunto, $email, $mensagem){

    
    $data = date("Y-m-d H:i:s");
    
    // Insert data into the table
    $sql = "INSERT INTO mensagens_recebidas (nome, assunto, email, mensagem, data_envio) VALUES ('$nome', '$assunto', '$email', '$mensagem', '$data')";
	iduSQL($sql);
    
    return false;
}

if(isset($_POST['nome'], $_POST['assunto'], $_POST['email'], $_POST['mensagem'])) {
    $nome = $_POST['nome'];
    $assunto = $_POST['assunto'];
    $email = $_POST['email'];
    $mensagem = $_POST['mensagem'];
    
    saveMessage($nome, $assunto, $email, $mensagem);
	
	
}

header("Location: contactos.php");
?>