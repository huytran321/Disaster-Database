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

$sql = "SELECT Report.reportID, Claimant.firstName, Claimant.lastName, Disaster.disasterDate, Disaster.disasterName, Disaster.disasterID 
FROM Report INNER JOIN Claimant ON Report.reportID = Claimant.claimantID 
INNER JOIN Disaster ON Report.reportID = Disaster.disasterID
ORDER BY Report.reportID";
$result = $conn->query($sql);



$disasters = array();

if ($result->num_rows > 0) {
  // output data of each row

  while($row = $result->fetch_assoc()) {
    $arr = array(
      "reportId"=>$row["reportID"], 
      "firstName"=>$row["firstName"], 
      "lastName"=>$row["lastName"],
      "disasterID"=>$row["disasterID"],
      "disasterName"=>$row["disasterName"],
      "disasterDate"=>$row["disasterDate"]
    );
    
    array_push($disasters, $arr);
  }
}
$conn->close();
?>