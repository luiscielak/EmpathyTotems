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
        <h3>What are you feeling?</h3>
    </div>
    <div class="wrapper">

        <div class="intro">
            <!-- <h3>How do you feel?</h3> -->
        </div>

        <form method="post" action="setEmotion.php">
            <button type="submit" name="emo" value="1:3" id="anxiety">Anxiety</button>
            <button type="submit" name="emo" value="2:3" id="arousal">Arousal</button>
            <button type="submit" name="emo" value="3:3" id="flow">Flow</button>
            <button type="submit" name="emo" value="1:2" id="worry">Worry</button>
            <button type="submit" name="emo" value="2:2" id="neutral">Neutral</button>
            <button type="submit" name="emo" value="3:2" id="control">Control</button>
            <button type="submit" name="emo" value="1:1" id="apathy">Apathy</button>
            <button type="submit" name="emo" value="2:1" id="boredom">Boredom</button>
            <button type="submit" name="emo" value="3:1" id="relaxation">Relaxation</button>
        </form>
    </div>

</body>
</html>