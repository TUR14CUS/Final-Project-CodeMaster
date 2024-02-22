<?php

session_start();
date_default_timezone_set("Europa/Lisbon");

function doLogin($login, $senha){
    $user = selectUnicSQL("SELECT * FROM _backoffice WHERE login = '$login' AND senha = '$senha'");

    

    if (!empty($user)){

        $data = date("d-m-Y H:i:s");

        $id = $user['id'];
        $_SESSION['user'] == $user;
        iduSQL("UPDATE _backoffice SET data_ultimo_acesso = '$data' WHERE id = $id");
        return true;

    }
    return false;
};

function isLogged(){
    return !empty($_SESSION['user']);
};

 

?>