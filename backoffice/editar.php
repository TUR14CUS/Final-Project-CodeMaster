<?php
require_once "../requirements.php";

//se nao tem cookies set, é porque nao fez login, redirenciona então para o login
if (!isset($_COOKIE['loggedIn'])) {
    header("Location: index.php");
    exit();
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
    echo "</tr>";
    foreach ($sqla as $item) {
        echo "<tr>";
        foreach ($item as $value) {
            echo "<td>$value</td>";
        }
        echo "</tr>";
    }
    echo "</table><br><br>";
} else {
    echo "No results found.";
}
}


function fazer_tabela_de_edicao($sql_statement){
    $tabela = explode(" ", $sql_statement)[sizeof(explode(" ", $sql_statement))-1];
    echo "<b>tabela</b> " . $tabela;
    $sql_data = selectSQL($sql_statement);
    
    if (!empty($sql_data)) {
        echo "<form method='POST' action='salvar_tabela.php'>";
        echo "<input type='hidden' name='tabela' value='". $_GET['tabela'] ."'>";
		echo "<input type='hidden' name='idzz' value='" . $_GET['id'] . "'>";
        echo "<table class='tabela_outputs_db' border='1'>";
        
        echo "<tr>";
        foreach ($sql_data[0] as $key => $value) {
            echo "<th>$key</th>";
        }
        echo "</tr>";
                echo "</table><br>";
				
        foreach ($sql_data as $item) {
            foreach ($item as $key => $value) {
				if ($key == "id") { continue; }
                echo "
				$key
				<br><br>
				<textarea id='mytextarea' name='data[$key][]' value='$value' style='width:70%;'>
				$value
				</textarea>
				";
            }
        }
        

        echo "<input type='submit' value='SALVAR ALTERAÇÕES'>";
        echo "</form>";
    } else {
        echo "No results found.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="../tinymce/js/tinymce/tinymce.min.js"></script>
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

input[type="text"] {
  width: 100%; /* Allow the input field to grow */
  height: 100%;
  min-width: 0; /* Set minimum width to 0 */
  max-width: 100%; /* Set maximum width to 100% */
  box-sizing: border-box; /* Include padding and border in the element's total width */
}

</style>
    <script>
      tinymce.init({
        selector: '#mytextarea',
		forced_root_block : false

      });
    </script>
  </head>

  <body>
  <h1>Menu de edição</h1>
<br>
<a href="home.php">voltar...</a>
<br><br><br><br>


<?php

if (isset($_GET['tabela']) && isset($_GET['id'])) {
		$statment = "SELECT * FROM " . $_GET['tabela'] . " WHERE id = " . $_GET['id'];
		fazer_tabela($statment);
		echo "<br><br>";
		fazer_tabela_de_edicao($statment);

} else{
	
	echo "Selecione uma das tabelas acima para editar a mesma";
}



?>

	
  </body>
</html>