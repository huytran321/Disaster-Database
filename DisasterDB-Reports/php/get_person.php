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

$sql = "SELECT reportID, firstName, lastName, email, phone, streetAddress, city, postalCode, disasterName, disasterDate
FROM Report
INNER JOIN Claimant ON Report.reportID = Claimant.claimantID
INNER JOIN ClaimantAddress ON Claimant.claimantID = ClaimantAddress.addressID
INNER JOIN Disaster ON Report.reportID = Disaster.disasterID;";
$result = $conn->query($sql);



$persons = array();

if ($result->num_rows > 0) {
  // output data of each row

  while($row = $result->fetch_assoc()) {
    $arr = array(
      "reportId"=>$row["reportID"], 
      "firstName"=>$row["firstName"], 
      "email"=>$row["email"],
      "phone"=>$row["phone"],
      "streetAddress"=>$row["streetAddress"],
      "city"=>$row["city"],
      "postalCode"=>$row["postalCode"],
      "disasterName"=>$row["disasterName"],
      "disasterDate"=>$row["disasterDate"]
    );
    
    array_push($persons, $arr);
  }
} 
$conn->close();
?>