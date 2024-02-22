<?php

function getMinTextFerias(){
    $result = selectUnicSQL("SELECT texto FROM menu_simples WHERE id = 3");
    $texto = $result['texto'];

    $minText = substr($texto, 0, 400);

    return $minText;
}

function getFerias(){
    $result = selectUnicSQL("SELECT * FROM menu_simples WHERE id = 3");
    return $result;
}

?>