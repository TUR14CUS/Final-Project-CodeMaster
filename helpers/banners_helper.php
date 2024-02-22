<?php


function getBanner($pagina)
{
    $result = selectSQL("SELECT * FROM banner WHERE pagina = '$pagina'");
    return $result;
}
