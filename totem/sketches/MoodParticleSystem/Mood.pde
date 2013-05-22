// A mood class

class Mood {
  String moodName;
  String moodDate;

  int state = 0;
  String currentEmo;

  int r, g, b;

  String feed = "http://fstraat.webfactional.com/emto/getLastEmotion.php";

  Mood() {

    fetchData();
  }

  void run() {
    update();
    render();
  }



  void fetchData() {

    //  Variables to parse data
    String data;
    String chunk;


    try {
      URL url = new URL(feed);
      URLConnection conn = url.openConnection();
      conn.connect();

      // Read and buffer data
      BufferedReader in = new
        BufferedReader(new InputStreamReader(conn.getInputStream()));

      while ( (data = in.readLine ()) !=null) {

        String[] m = match(data, "<span id='emo_name'>(.+?)</span>");
        if (m != null) {
          moodName = m[1];
          println(moodName);
          ps.addParticle();
          ps.run();
        }
      }
    }
    // Error handling 
    catch (Exception ex) {
      ex.printStackTrace();
      System.out.println("ERROR: "+ex.getMessage());
    }
  }

  void update() {

    // Update current state
    if (keyCode==48 || currentEmo.equals("neutral")) state=0;
    if (keyCode==49 || currentEmo.equals("apathy")) state=1;
    if (keyCode==50 || currentEmo.equals("worry")) state=2;
    if (keyCode==51 || currentEmo.equals("anxiety")) state=3;
    if (keyCode==52 || currentEmo.equals("boredom")) state=4;
    if (keyCode==53 || currentEmo.equals("arousal")) state=5;
    if (keyCode==54 || currentEmo.equals("relaxation")) state=6;
    if (keyCode==55 || currentEmo.equals("control")) state=7;
    if (keyCode==56 || currentEmo.equals("flow")) state=8;
    if (keyCode==57 || currentEmo.equals("na")) state=9;

    // Assing color values
    switch(state) {

      // neutral    
    case 0:
      r = 200;
      g = 200;
      b = 200;
      break;

      // apathy
    case 1:
      r = 0;
      g = 0;
      b = 245;
      break;

      // worry
    case 2:
      r = 102;
      g = 16;
      b = 255;
      break;

      // anxiety
    case 3:
      r = 245;
      g = 0;
      b = 0;
      break;

      // boredom
    case 4:
      r = 182;
      g = 200;
      b = 200;
      break;

      // arousal
    case 5:
      r = 255;
      g = 128;
      b = 0;
      break;

      // relaxation
    case 6:
      r = 0;
      g = 255;
      b = 0;
      break;

      // control
    case 7:
      r = 122;
      g = 255;
      b = 0;
      break;

      // flow
    case 8:
      r = 255;
      g = 245;
      b = 0;
      break;

      // NA
    case 9:
      r = 10;
      g = 10;
      b = 10;
      break;
    }
  }


  void render() {

    // render status to screen
    fill(r, g, b);
    noStroke();
    ellipse(width/2, height/2, 20, 20);
  }
}

