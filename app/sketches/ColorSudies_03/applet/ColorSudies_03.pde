
float x, y, d;
int num;

color[] palette = {
  #f59898, // anxiety
  #d8ceec, // worry 
  #99b7e6, // apathy 
  #f7ebb4, // arousal
  #fcfcf6, // neutral
  #c2e9e0, // boredom 
  #f6f699, // flow 
  #e9f7b3, // control 
  #97f597  // relaxation
};

void setup() {
  size(500, 500);
  smooth();

  num = 3;
  d = width/num;
}

void draw() {
  background(40);

  fill(240);
  noStroke();

  // Color pallette counter
  int ii=0;

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      fill(palette[ii]);
      rect(width/num*i, height/num*j, d+2, d+2);
      ii++;
    }
  }

  drawCursor((int)random(0, 9));
}

void drawCursor(int ii) {
  //  Custom mouse cursor
  noCursor();
  pushMatrix();


  noStroke();
  fill(120, 120, 120);

  ellipse(mouseX, mouseY, 40, 40);

  fill(palette[ii]);
  ellipse(mouseX, mouseY, 35, 35);
  popMatrix();
}

