//  colorMap.pde
//  Works RGB_LED.ino

import processing.serial.*;

Serial myPort;

int r, g, b;
color col = 255;

String feed = "http://fstraat.webfactional.com/emto/getLastEmotion.php";

int state = 0;
String currentEmo;

color[] palette = {
  #f59898, // anxiety
  #f7ebb4, // arousal
  #f6f699, // flow 
  #d8ceec, // worry 
  #fcfcf6, // neutral
  #e9f7b3, // control
  #99b7e6, // apathy 
  #c2e9e0, // boredom 
  #97f597  // relaxation
};

void setup() {
  size(512, 512);
  smooth();

  frameRate(10);

  rectMode(CENTER);

  // Define Arduino port
  myPort = new Serial(this, Serial.list()[4], 9600);

  //  Ddefault RGB value
  r = 255;
  g = 255;
  b = 255;
}

void draw() {
  background(col);

  fetchData();
  update();
  render();
}

void update() {

  //  Update element color and sync data to Arduino


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

  // Send color data to Arduino
  myPort.write("CL");    // clears the buffer
  myPort.write(r); 
  myPort.write(g);
  myPort.write(b);
}

void render() {
  // render status to screen
  fill(r, g, b);
  noStroke();
  ellipse(width/2, height/2, width/3, height/3);
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
        currentEmo = m[1];
        println(currentEmo);
      }
    }
  }
  // Error handling 
  catch (Exception ex) {
    ex.printStackTrace();
    System.out.println("ERROR: "+ex.getMessage());
  }
}

