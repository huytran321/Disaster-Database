<?php
$servername = "vergil.u.washington.edu";
$username = "root";
$password = "MarkisCool";
$dbname = "disasterdb";
$port = 20000;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname, $port);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Sanitize POST Array
$POST = filter_var_array($_POST, FILTER_SANITIZE_STRING);


$id = $POST['disasterID'];
$name = $POST['disasterName'];
$date = $POST['disasterDate'];

$sql = "UPDATE Disaster SET disasterName='".$name."', disasterDate='".$date."' WHERE 
    disasterID=".$id."";
$result = $conn->query($sql);


$conn->close();
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>