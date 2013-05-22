<!doctype html>
<head>
    <title>How do you feel?</title>
    <meta name="viewport" content="width=device-width, initial-scale=0.5, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="no">
    <link href="css/style.css" rel="stylesheet">
</head>

<!-- Disable all touch-move events -->
<script type="text/javascript">
    function blockMove() {
       event.preventDefault() ;
}
</script>


<body ontouchmove="blockMove()">

    <div class="nav">
        <h3>Emotion + Mood</h3>
    </div>
    <div class="wrapper">

        <div class="intro">
            <h3><a href="emo.php"> enter emotion data &rarr;</a></h3>
        </div>

    </div>

</body>
</html>