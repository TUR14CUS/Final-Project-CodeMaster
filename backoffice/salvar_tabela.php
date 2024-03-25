<?php
require_once "../requirements.php";

//se nao tem cookies set, é porque nao fez login, redirenciona então para o login
if (!isset($_COOKIE['loggedIn'])) {
    header("Location: index.php");
    exit();
}

//var_dump($_POST['data']);

$sql_updater = "UPDATE " . $_POST['tabela'] . " SET " ;

$aaa = 0;
foreach ($_POST['data'] as $key=>$value) {
	echo "<b>$key: </b>";
	echo "$value[0]<br><br>";
	if($aaa == 0){
		if (substr_count($value[0], "<p>" ) == 1) { 
			$sql_updater = $sql_updater . "$key = '" . substr($value[0], 3, -4) . "'";
			}
			else{
		$sql_updater = $sql_updater . "$key = '$value[0]'";
			}
		$aaa = 2;
	}else{
			if (substr_count($value[0], "<p>" ) == 1) { 
			$sql_updater = $sql_updater . ", $key = '" . substr($value[0], 3, -4) . "'";
			}
			else{

			
		$sql_updater = $sql_updater . ", $key = '$value[0]'";
		
			}
	}
	//var_dump($value[0]);
}
echo "<br><br><br><br>";

$sql_updater = $sql_updater . " WHERE id = ". $_POST['idzz'];
echo $sql_updater;
//"
//UPDATE rrr
//SET www = 'a', City= 'd'
//WHERE aadd = 1; 
//"

selectSQL($sql_updater);

header("Location: editar.php?tabela=". $_POST['tabela'] ."&id=" . $_POST['idzz']);

?>
