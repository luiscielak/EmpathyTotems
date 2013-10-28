<!doctype html>
<head>
    <title>Empathy Totems</title>
    <meta name="viewport" content="width=device-width, initial-scale=0.5, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="no">
    <link href="css/style.css" rel="stylesheet">

</head>

<style>
    span {display:block;clear:both;}

    .emotion {
        border: none;
        font-size: 3.5em;
        width: auto;
        line-height: 100px;
    }



</style>

<!-- <body> -->
    
    <!-- Connect to selftrack DB; mood table -->

    <?php
        // DB connection info
        require("db.php");

        $table = 'vw_emotion';

        // Connect to mySQL DB
        $conn = mysql_connect($db_host,$db_user,$db_pwd);

        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        mysql_select_db($database,$conn);
        $result = mysql_query("SELECT * FROM ". $table ." LIMIT 1", $conn);

        // Print results
        while($row = mysql_fetch_array($result))
        {
            echo "<body id=".$row["name"].">";
            echo "<div class=emotion results id='".$row["name"]."'>";
            echo "<span id='emo_id'>".$row["id"]."</span><span id='emo_name'>".$row["name"]."</span><span id='emo_dtm'>".$row["dtm"]."</span><br>";
            echo "</div>";
            echo "</body>";
        }
    ?>

<!-- </body> -->

</html>