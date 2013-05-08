import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class ColorSudies_03 extends PApplet {


float x, y, d;
int num;

int[] palette = {
  0xfff59898, // anxiety
  0xffd8ceec, // worry 
  0xff99b7e6, // apathy 
  0xfff7ebb4, // arousal
  0xfffcfcf6, // neutral
  0xffc2e9e0, // boredom 
  0xfff6f699, // flow 
  0xffe9f7b3, // control 
  0xff97f597  // relaxation
};

public void setup() {
  size(500, 500);
  smooth();

  num = 3;
  d = width/num;
}

public void draw() {
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

public void drawCursor(int ii) {
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

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--hide-stop", "ColorSudies_03" });
  }
}
