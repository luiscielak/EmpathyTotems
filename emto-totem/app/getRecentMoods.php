<!doctype html>
<head>
    <title>Empathy Totems | moods</title>
</head>

<body>
    <h3>Last Entry:</h3> <br>

    <!-- Connect to selftrack DB; mood table -->

    <?php

        // DB connection info
        require('db.php');

        // Connect to mySQL DB
        $conn = mysql_connect($db_host,$db_user,$db_pwd);

        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        mysql_select_db($database,$conn);
        $result = mysql_query("SELECT * FROM mood LIMIT 3", $conn);

        // Print results
        while($row = mysql_fetch_array($result))
        {
            echo $row["mood_sym"]."<br>".$row["mood_dtm"]."<br><br>";
        }


        // Assign variables
        $mood_sym = $_GET[$mood_sym];

    ?>

    <br>
    

    <!-- Back Button -->
    <?php
      $url = htmlspecialchars($_SERVER['HTTP_REFERER']);
      echo "<a href='$url'>back</a>"; 
    ?>
</body>

</html>