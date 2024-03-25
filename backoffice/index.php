<?php

require_once "../requirements.php";





//var_dump($_POST);

?>

<!DOCTYPE html>
<html lang="pt">

<head>
<title> Backoffice </title>
<style>
body {
font-family: Arial, sans-serif; /* Setting font family to Arial */
font-size: 16px; /* Increasing font size */
}
</style>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

</head>

<body>

<h1>Backoffice</h1>


<form action="validarcaptcha.php" method="POST" id="login">
	<label for="utilizador">Nome do utilizador:</label>
	<br>
	<input type="text" id="utilizador" name="utilizador">
	<br><br>
	<label for="senha">Senha:</label>
	<br>
	<input type="password" name="senha" id="senha">
	<br><br>
	<div class="g-recaptcha" data-sitekey="6Le18KApAAAAAEWUuTVYF1FiIvHMbBy4pwsTQ0aJ"></div>
	<br><br>
	<button type="submit" value="Entrar">Entrar</button>
	<br><br>
	<?php
	$form = isset($_GET['erro']);
if ($form && $form == "1") {
echo "<p style='color:red;'>nome ou senha incorretos</p>";
}

if ($form && $form == "2") {
echo "<p style='color:red;'>capctha incorreto</p>";
}
	?>

</form>

</body>
</html>