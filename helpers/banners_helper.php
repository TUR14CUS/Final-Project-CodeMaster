<?php


function getBanner($pagina){
    $result = selectSQL("SELECT * FROM banners WHERE pagina = '$pagina'");
    return $result;
}
?>