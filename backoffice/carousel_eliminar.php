<?php

require('templates/header.php');
$form = isset($_GET['eliminar']);

if($form){
    $eliminar = intval($_GET);
    iduSQL("DELETE FROM carousel WHERE id = $eliminar");
}

?>