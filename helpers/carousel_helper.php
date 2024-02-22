<?php

function getAllCarousel(){
    $result = selectSQL("SELECT * FROM carousel");
    return $result;
}

?>