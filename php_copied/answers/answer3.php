<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$query = "SELECT nayavnaKilkist as answer3 FROM detal WHERE kodDetali = 1002";
$result = $conn->query($query);
$answer3 = array();
while($row = $result->fetch_assoc()) {
       array_push($answer3, $row);
  }

$conn->close();
header('Content-Type: application/json');
echo json_encode($answer3);

?>