
float x, y, w, h;

float hu, sa, br;

float num = 20;

float pad=10;

void setup() {
  size(600, 600);
  smooth();

  x = 0;
  y = 30;
  w = width/num;

  hu = 0;
  sa = 0;
  br = 0;
}



void draw() {

  background(hu, sa, br);

  hu = map(mouseX, 0, width, 0, 359);
  sa = map(mouseY, 0, width, 0, 99);
  br = 100;

  println(millis());
}


void old() {



  for (int i=0; i<num; i++) {



    colorMode(HSB);

    fill(10*i, 100, 100);
    rect(x+i*w, y, w, w);

    fill(100, 10*i, 100);
    rect(x+i*w, y+w*2, w, w);


    fill(100, 100, 10*i);
    rect(x+i*w, y+w*4, w, w);
  }
}

