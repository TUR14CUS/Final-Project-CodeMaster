<?php

function getAllCarousel(){
    $result = selectSQL("SELECT * FROM carousel");
    return $result;
}

function getCarouselID($id){
    $result = selectUnicSQL("SELECT * FROM carousel WHERE id = $id");
    return $result;
}

?>