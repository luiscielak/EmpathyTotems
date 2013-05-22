<?php

// getEmotionsJSON.php 
// Connects to selftrack DB; emotions table view 
// Returns JSON object

// DB connection info
require('db.php');

$table = 'vw_emotion';

// Connect to mySQL DB
$conn = mysql_connect($db_host,$db_user,$db_pwd);

if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// Query MySQL DB
mysql_select_db($database,$conn);
$result = mysql_query("SELECT * FROM ". $table, $conn);


// Create JSON object
$rows = array(); 

while($row = mysql_fetch_assoc($result)){
    $rows[] = $row;
}

print json_encode($rows);

?>

