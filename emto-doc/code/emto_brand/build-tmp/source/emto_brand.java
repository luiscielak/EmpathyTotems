import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class emto_brand extends PApplet {

PShape s,square;

public void setup(){
  size(400,400,P2D);
  s = loadShape("totem.svg");


}


public void draw(){
  background(240);

  translate(-mouseX/2,-mouseY/2);
  shape(s,0,0);
  
  



    println(s.getChildCount());



}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "emto_brand" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
