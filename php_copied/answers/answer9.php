<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$query = "SELECT kodDetali as answer9 FROM detal ORDER BY gurtovaCina DESC LIMIT 1";
$result = $conn->query($query);
$answer9 = array();
if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($answer9, $row);
    }
}

$conn->close();
header('Content-Type: application/json');
echo json_encode($answer9);
?>