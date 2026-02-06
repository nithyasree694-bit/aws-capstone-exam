<?php
$host = "RDS_ENDPOINT";
$user = "admin";
$password = "password123";
$db = "streamlinedb";

$conn = new mysqli($host, $user, $password, $db);

if ($conn->connect_error) {
    die("Connection failed");
}
echo "Database Connected Successfully";
?>
