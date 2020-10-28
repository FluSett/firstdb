<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$query = "SELECT * FROM reestr";
$result = $conn->query($query);
$response = array();
if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($response, $row);
    }
}

$conn->close();
header('Content-Type: application/json');
echo json_encode($response);

?>