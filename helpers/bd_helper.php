<?php

$pdo = new PDO('mysql:host=localhost;dbname=construcao_e_habitacao_bd', 'root', '');

function selectSQL($sql){
    global $pdo;
    $consult = $pdo->query($sql);
    $result = $consult->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function selectUnicSQL($sql){
    global $pdo;
    $consult = $pdo->query($sql);
    $result = $consult->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function iduSQL($sql){
    global $pdo;
    $consult = $pdo->query($sql);
}

?>