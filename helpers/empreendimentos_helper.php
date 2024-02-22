<?php

function getAllEmpreendimentosMenu(){
    $result = selectSQL("SELECT id,titulo FROM empreendimentos");
    return $result;
}

?>