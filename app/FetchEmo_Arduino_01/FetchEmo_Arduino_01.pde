// FetchEmo
// Works with RGB_LED.ino
// HTTP request to fetch and parse emotion data
// Luis Cielak
// 2013-04-18

import processing.serial.*;

PImage img;	

Serial myPort;

String feed = "http://fstraat.webfactional.com/emto/getLastEmotion.php";

String currentEmo;

color col = 255;

int r = 0;
int g = 0;
int b = 0;


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

  frameRate(10);

  myPort = new Serial(this, Serial.list()[4], 9600);

  img = loadImage("RGBR.jpg");
}


void draw() {
  background(col);

  image(img, 0, 0);
  img.loadPixels();


  fetchData();
  updateColor();
}

void updateColor() {
  //  col = palette[(int)random(palette.length)];

//  myPort.write("CL");
//  myPort.write(int(red(img.pixels[mouseX+mouseY*img.width])));
//  myPort.write(int(green(img.pixels[mouseX+mouseY*img.width]))); 
//  myPort.write(int(blue(img.pixels[mouseX+mouseY*img.width])));


  if (currentEmo.equals("anxiety")) {
    col = #f59898;
//    //    r = 245;
    //    g = 152;
    //    b = 152;
  }
  if (currentEmo.equals("arousal")) col = #f7ebb4;
  if (currentEmo.equals("flow")) col = #f6f699;
  if (currentEmo.equals("worry")) col = #d8ceec;
  if (currentEmo.equals("neutral")) {
    col = #D8D8D8;
    r = 255;
    g = 255;
    b = 255;
  }

  if (currentEmo.equals("control")) {
    col = #e9f7b3;
    r = 0;
    g = 200;
    b = 0;
  }

  if (currentEmo.equals("apathy")) {
    col = #99b7e6;
    r = 0;
    g = 0;
    b = 255;
  }
  if (currentEmo.equals("boredom")) col = #c2e9e0;
  if (currentEmo.equals("relaxation")) col = #97f597;
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
      }
    }
  }
  // Error handling 
  catch (Exception ex) {
    ex.printStackTrace();
    System.out.println("ERROR: "+ex.getMessage());
  }
}

void mousePressed() {
//  r = (int)red(img.pixels[mouseX+mouseY*img.width]);
//  g = (int)green(img.pixels[mouseX+mouseY*img.width]); 
//  b = (int)blue(img.pixels[mouseX+mouseY*img.width]);

  println(r+" "+g+" "+b);

 sendToArduino();
}

void sendToArduino() {
  println("to arduino and beyond!"+" "+currentEmo+" "+r+" "+g+" "+b);
  myPort.write("CL");
  myPort.write(int(red(r)));
  myPort.write(int(green(g))); 
  myPort.write(int(blue(b)));
}

