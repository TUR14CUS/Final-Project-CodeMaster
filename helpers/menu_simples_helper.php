<?php

function getMenuSimplesID($id){
    $result = selectUnicSQL("SELECT * FROM menu_simples WHERE id = $id");
    return $result;
}

?>