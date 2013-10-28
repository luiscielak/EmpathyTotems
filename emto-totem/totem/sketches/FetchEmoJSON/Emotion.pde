// Class for emotion objects
class Emotion {

  String id;
  String name;
  int challenge;
  int skill;
  String dtm;

  PVector location = new PVector(random(20, width-20), random(20, height-20));
  color col = 255;

  int r, g, b, a;

  Emotion() {
  }

  void run() {
    update();
    render();
  }

  void update() {

    col = (int)map(challenge, 0, 3, 100, 200);

    a = (int)map(skill, 0, 3, 100, 200);


    //    location.x = random(0, width);
    //    location.y = random(0, height);
  }

  void render() {

    fill(col,a);
    noStroke();
    ellipse(location.x, location.y, 20, 20);
    

  }
}

