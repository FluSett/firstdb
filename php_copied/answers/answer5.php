<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$query = "SELECT kodDetali as answer5x1, COUNT(*) as answer5x2 FROM reestr GROUP BY kodDetali ORDER BY 2 DESC LIMIT 1"; 
$result = $conn->query($query);
$answer5 = array();
if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($answer5, $row);
    }
}

$conn->close();
header('Content-Type: application/json');
echo json_encode($answer5);
?>