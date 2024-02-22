<?php

function getMinTextsocios(){
    $result = selectUnicSQL("SELECT texto FROM menu_simples WHERE id = 2");
    $texto = $result['texto'];

    $minText = substr($texto, 0, 400);

    return $minText;
}

function getSocios(){
    $result = selectUnicSQL("SELECT * FROM menu_simples WHERE id = 2");
    return $result;
}

?>