<?php
require_once "../requirements.php";

//se nao tem cookies set, é porque nao fez login, redirenciona então para o login
if (!isset($_COOKIE['loggedIn'])) {
    header("Location: index.php");
    exit();
}

$debug = false;
// Para fazer debug
if ($debug){
echo "<div style='float:right'>cookies:";
if(count($_COOKIE) > 0) {
    echo "<ul>";
    foreach ($_COOKIE as $key => $value) {
        echo "<li><strong>$key:</strong> $value</li>";
    }
    echo "</ul>";
} else {
    echo "No cookies set.";
}
echo "</div>";
}



function fazer_tabela($sql_statment){
	$tabela = explode(" ", $sql_statment)[sizeof(explode(" ", $sql_statment))-1];
	echo "<b>tabela</b> " . $tabela;
	$sqla = selectSQL($sql_statment);
if (!empty($sqla)) {
    echo "<table class='tabela_outputs_db' border='1'>";
    
    echo "<tr>";
    foreach ($sqla[0] as $key => $value) {
        echo "<th>$key</th>";
    }
    echo "<th>Editar</th>"; 
    echo "</tr>";
    foreach ($sqla as $item) {
        echo "<tr>";
        foreach ($item as $value) {
            echo "<td>$value</td>";
        }
        echo "<td><a href='editar.php?tabela=" . $tabela . "&id=" . $item['id'] ."'>Editar</a></td>";
        echo "</tr>";
    }
    echo "</table><br><br>";
} else {
    echo "No results found.";
}
}
?>

<html lang="pt">

<head>
<title>Backoffice</title>
<style>
body {
font-family: Arial, sans-serif; /* Setting font family to Arial */
font-size: 16px; /* Increasing font size */
}

table {
  border-collapse: collapse;
  width: 100%;
}
th {
  background-color: #a8a8a8;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

td {
  padding: 8px;
  border-bottom: 1px solid #ddd;
}

tr:hover {
  background-color: #f2f2f2;
}

</style>
</head>

<body>

<h1>Backoffice home</h1>

olá, <?php echo $_COOKIE['utilizador'] ?>, <a href="logout.php">Terminar sessão</a>
<br><br>

<h2>Editar base de dados</h2>
<a href="?tabela=menu_simples">menu_simples</a><br>
<a href="?tabela=destaques">destaques</a><br>
<a href="?tabela=empreendimentos">empreendimentos</a><br>
<a href="?tabela=contactos">contactos</a><br>
<a href="?tabela=noticias">noticias</a><br>
<br><br>


<?php

if (isset($_GET['tabela'])) {
		$statment = "SELECT * FROM " . $_GET['tabela'];
		fazer_tabela($statment);

} else{
	echo "Selecione uma das tabelas acima para editar a mesma";
}



?>


</body>
</html>