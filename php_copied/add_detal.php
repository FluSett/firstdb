<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$kodDetali = $_POST['kodDetali'];
$kategoriyaDetali = $_POST['kategoriyaDetali'];
$nazvaDetali = $_POST['nazvaDetali'];
$specifikaciya = $_POST['specifikaciya'];
$nayavnaKilkist = $_POST['nayavnaKilkist'];
$gurtovaCina = $_POST['gurtovaCina'];

$query = "INSERT INTO detal (
  kodDetali,
  kategoriyaDetali,
  nazvaDetali,
  specifikaciya,
  nayavnaKilkist,
  gurtovaCina)
	 VALUES (
	 '$kodDetali',
	 '$kategoriyaDetali',
	 '$nazvaDetali',
	 '$specifikaciya',
	 '$nayavnaKilkist',
	 '$gurtovaCina')";
	     
$result = $conn->query($query);

$conn->close();

?>