<!doctype html>
<head>
    <title>Empathy Totems | insert</title>
</head>

<body>
    
    <!-- Connect to selftrack DB; mood table -->
    <?php

        // DB connection info
        require('db.php');

        $table = 'mood';

        $mood_sym = $_POST['mood_sym'];

        // Establish connection with the DB
        $conn = mysql_connect($db_host,$db_user,$db_pwd);
        mysql_select_db($database,$conn);

        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }


		// Insert data
		mysql_query("INSERT INTO ".$table."(`mood_sym`,`mood_dtm`) 
			VALUES ('".$mood_sym."',UTC_TIMESTAMP())") or die(mysql_error());		


		// Print last entry
		echo "<h4>Just now</h4> ";
		echo $mood_sym ." ". time();
		echo "<br><br><br>";


		echo "Recent entries: <br>";
        
        // Select recent entries
        $result = mysql_query("SELECT * FROM ".$table." ORDER BY mood_dtm DESC LIMIT 3", $conn);

        // Print results
        while($row = mysql_fetch_array($result))
        {
            echo $row["mood_sym"]."<br>".$row["mood_dtm"]."<br><br>";
        }

    ?>

    <br>


    <!-- Back Button -->
    <?php
      $url = htmlspecialchars($_SERVER['HTTP_REFERER']);
      echo "<a href='$url'>back</a>"; 
    ?>


</body>

</html>