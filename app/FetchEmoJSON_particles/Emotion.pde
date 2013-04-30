// Class for emotion objects
class Emotion {

  String id;
  String name;
  int challenge;
  int skill;
  String dtm;
  
  int state;

  Emotion() {
  }

  void run() {
    create();
  }

  void update() {
    // Update current state
    if (name.equals("neutral")) state=0;
    if (name.equals("apathy")) state=1;
    if (name.equals("worry")) state=2;
    if (name.equals("anxiety")) state=3;
    if (name.equals("boredom")) state=4;
    if (name.equals("arousal")) state=5;
    if (name.equals("relaxation")) state=6;
    if (name.equals("control")) state=7;
    if (name.equals("flow")) state=8;
    if (name.equals("na")) state=9;
  }


  void create() {

    ps.addParticle(mouseX, mouseY);

    //    ps.addParticle();
    ps.run();
  }
}

