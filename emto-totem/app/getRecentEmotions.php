<!doctype html>
<head>
    <title>Empathy Totems</title>
    <meta name="viewport" content="width=device-width, initial-scale=0.5, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="no">
    <link href="css/style.css" rel="stylesheet">

</head>

<style>
    span {display:block;clear:both;}
</style>

<body>
    
    <!-- Connect to selftrack DB; mood table -->

    <?php

        // DB connection info
        require('db.php');
        $table = 'vw_emotion';
        $limit = '10';

        // Connect to mySQL DB
        $conn = mysql_connect($db_host,$db_user,$db_pwd);

        if (mysqli_connect_errno()){
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        // Query MySQL DB
        mysql_select_db($database,$conn);
        $result = mysql_query("SELECT * FROM ". $table ." LIMIT ".$limit, $conn);


        // Print HTML results        
        echo "<div class=results> \n";
        while($row = mysql_fetch_array($result)) {
            echo "<span id='emo_id'>".$row["id"]."</span><span id='emo_name'>".$row["name"]."</span><span id='emo_dtm'>".$row["dtm"]."</span><br> \n";    
        }
        echo "</div>\n";

    ?>

</body>

</html>