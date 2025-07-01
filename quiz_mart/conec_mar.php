<?php 
$databaseHost = '3306';
$databaseUsername = '';
$databasePassword = '205010'
$databaseName = 'quiz_charles'

$mysqli = $mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
$result = $mysqli_query($mysqli, "SELECT * from perguntas");

if ($result->num_rows > 0){
while ($row = $result-> fetch_assoc())
{
    echo $row["id_perg"] . " - ". $row["descricao"];
}
}else {
    echo "O resuldados";
}

?>