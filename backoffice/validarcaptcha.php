<?php
require_once "../requirements.php";

$CAPTCHA_ATIVADO = false;

if ($CAPTCHA_ATIVADO == false){
	
	$form = isset($_POST['utilizador'], $_POST['senha']);
	if ($form) {

	$login = $_POST['utilizador'];
	$senha = $_POST['senha'];

	if (doLogin($login, $senha)) {
	setcookie("loggedIn", "true", time() + (86400 * 1), "/"); // cookie expira em 1 dia
	setcookie("utilizador", $_POST['utilizador'], time() + (86400 * 1), "/"); // cookie expira em 1 dia
	header("Location: home.php");
	exit;
	}else{
		header("Location: index.php?erro=1");
	}

}
}

if(isset($_POST['g-recaptcha-response'])){
	//echo "SIM";
	
	$segredo = "6Le18KApAAAAAExIfhymJszxCmSevngk_jfnu-3O";
	$ip = $_SERVER['REMOTE_ADDR'];
	$response = $_POST['g-recaptcha-response'];
	$url = "https://www.google.com/recaptcha/api/siteverify?secret=$segredo&response=$response&remoteip=$ip";
	$fire = file_get_contents($url);
	$data = json_decode($fire);
	if($data->success==true){
		//echo "parabens";
		
$form = isset($_POST['utilizador'], $_POST['senha']);
if ($form) {

$login = $_POST['utilizador'];
$senha = $_POST['senha'];

if (doLogin($login, $senha)) {
setcookie("loggedIn", "true", time() + (86400 * 1), "/"); // cookie expira em 1 dia
setcookie("utilizador", $_POST['utilizador'], time() + (86400 * 1), "/"); // cookie expira em 1 dia
header("Location: home.php");
exit;
}else{
	header("Location: index.php?erro=1");
}
}
	}else{
		echo "CAPTCHA INVALIDO";
	}
	
}else{
	echo "NAO";
}

header("Location: index.php");

?>