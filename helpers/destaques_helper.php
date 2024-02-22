<?php

function getAllDestaques(){
    $result = selectSQL("SELECT * FROM destaques");
    return $result;
}

function getAllDestaquesHome(){
    $result = selectSQL("SELECT * FROM destaques WHERE esta_na_home = 1 LIMIT 6");
    return $result;
}

?>