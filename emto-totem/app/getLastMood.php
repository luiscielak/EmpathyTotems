<!doctype html>
<head>
    <title>Empathy Totems</title>
</head>

<style>
    span {display:block;clear:both;}
</style>

<body>
    
    <!-- Connect to selftrack DB; mood table -->

    <?php

        require("db.php");

        // Connect to mySQL DB
        $conn = mysql_connect($db_host,$db_user,$db_pwd);

        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        mysql_select_db($database,$conn);
        $result = mysql_query("SELECT `mood_id`,`mood_sym`,`mood_dtm` FROM `mood` ORDER BY `mood_id` DESC LIMIT 1", $conn);

        // Print results
        while($row = mysql_fetch_array($result))
        {
            echo "<div class=results>";
            echo "<span id='mood_id'>".$row["mood_id"]."</span><span id='mood_sym'>".$row["mood_sym"]."</span><span id='mood_dtm'>".$row["mood_dtm"]."</span><br>";
            echo "</div>";
        }
    ?>

</body>

</html>