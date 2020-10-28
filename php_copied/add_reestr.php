<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$kodDetali = $_POST['kodDetali'];
$pib = $_POST['pib'];
//$zamovlenaDetal = $_POST['zamovlenaDetal'];
//$nazvaKategoriyi = $_POST['nazvaKategoriyi'];
$dataZamovlennya = $_POST['dataZamovlennya'];

$query = "INSERT INTO reestr (
  kodDetali,
  pib,
  zamovlenaDetal,
  nazvaKategoriyi,
  dataZamovlennya)
	 VALUES (
	 '$kodDetali',
	 '$pib',
	 (SELECT nazvaDetali FROM detal WHERE kodDetali = $kodDetali),
	 (SELECT kategoriyaDetali FROM detal WHERE kodDetali = $kodDetali),
	 '$dataZamovlennya')";
	     
$result = $conn->query($query);

$conn->close();

?>