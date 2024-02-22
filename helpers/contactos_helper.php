<?php

function getAllContacts(){
    $result = selectUnicSQL("SELECT * FROM contactos WHERE id = 1");
    return $result;
}

?>