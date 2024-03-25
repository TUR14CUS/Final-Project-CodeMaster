<?php

function getAllCarousel(){
    $result = selectSQL("SELECT * FROM carousel");
    return $result;
}

function getCarouselID($id){
    $result = selectUnicSQL("SELECT * FROM banner WHERE id = $id");
    return $result;
}

// vai buscar o url atual inteiro e filtra apenas o path para usar como input no sql statment
function getImagemByPagina(){
	$current_url = explode("/","$_SERVER[REQUEST_URI]");
	$query_preparada = $current_url[count($current_url)-1];
	$aa = $url = strstr($query_preparada, '.php', true); // em caso de haver paramentros, elimina o ".php" e tudo para a frente do mesmo
	//$aa = str_replace(".php", "", $query_preparada); // remove apenas a substr ".php"

    $result = selectUnicSQL("SELECT imagem FROM banner WHERE pagina='$aa'");
    return $result['imagem'];
}

?>