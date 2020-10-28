<?php

$host = 'localhost';
$user = 'id15186570_flusett';
$pass = '\0j#Ms&q3fR6Q&^[';
$name = 'id15186570_dbserverprojectdb';

$conn = new mysqli($host, $user, $pass, $name);

$query = "SELECT kodDetali as answer7x1, dataZamovlennya as answer7x2 FROM reestr WHERE dataZamovlennya BETWEEN '2000.10.10' AND '2015.01.01' GROUP BY dataZamovlennya ORDER BY dataZamovlennya";
$result = $conn->query($query);
$answer7 = array();
if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($answer7, $row);
    }
}
$conn->close();
header('Content-Type: application/json');
echo json_encode($answer7);

?>