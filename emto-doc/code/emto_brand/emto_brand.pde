PShape s,square;

void setup(){
  size(800,600,P2D);
  s = loadShape("totem.svg");


}


void draw(){
  background(240);

  translate(mouseX -mouseX/3,mouseY/2);
  shape(s,0,0);
  
  



    println(s.getChildCount());



}
