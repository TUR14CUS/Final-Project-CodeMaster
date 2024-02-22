<?php

function getAllDestaques(){
    $result = selectSQL("SELECT * FROM destaques");
    return $result;
}

?>