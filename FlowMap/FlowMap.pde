int cols = 10;


void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  colorMode(HSB);
  
  stroke(240);
  strokeWeight(2);


  for (int i=0; i<cols; i++) {
    for (int j=0; j<cols; j++) {

      fill(map(mouseX,0,width,0,200),120,120);
      
      
      rect(i*width/cols, j*height/cols, width/cols, height/cols);
      
    }
  }
  

}

