<?php

function getMinTextQuemSomos(){
    $result = selectUnicSQL("SELECT texto FROM menu_simples WHERE id = 1");
    $texto = $result['texto'];

    $minText = substr($texto, 0, 400);

    return $texto;
}

function getQuemSomos(){
    $result = selectUnicSQL("SELECT * FROM menu_simples WHERE id = 1");
    return $result;
}

?>