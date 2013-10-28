

<!-- Connect to selftrack DB; mood table -->
<?php

    // DB connection info
    require("db.php");

    $table_in = 'emotion';
    $table_vw = 'vw_emotion';

    $emo = explode(':', $_POST['emo']);

    $emo_challenge  = $emo[0];
    $emo_skill      = $emo[1];


    // Establish connection with the DB
    $conn = mysql_connect($db_host,$db_user,$db_pwd);
    mysql_select_db($database,$conn);

    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }


	// Insert data
	mysql_query("INSERT INTO ".$table_in."(`challenge`,`skill`,`dtm`) 
		VALUES ('".$emo_challenge."','".$emo_skill."',UTC_TIMESTAMP())") or die(mysql_error());		

    

    $url = htmlspecialchars($_SERVER['HTTP_REFERER']);
    echo "<a class='status' href='$url'>back</a>";
    echo "<p class='status'>added entry &rarr; ".$emo_challenge.":".$emo_skill."</i> (challenge:skill) <br>";

    include 'getLastEmotion.php';

?>