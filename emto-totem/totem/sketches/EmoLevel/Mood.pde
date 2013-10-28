class Mood {
  String moodName;
  String moodDate;
  String moodDayName;
  String moodMonthName;
  int moodDay;
  int moodHour;
  int moodMinute;

  float moodValue;


  float posX;
  float posY;

  int moodIndex = 0;
  int index = 0;

  color moodColor = color(0, 0, 0);

  Mood() {
  }

  void fromCSV (String[] csv) {
    moodName = csv[0];
    moodDate = csv[1];
    moodValue = getMoodValue(moodName);
    
    moodDay = int(moodDate.split(" ")[2]); 
  }

  void update() {
    
    
   
    

    moodValue = getMoodValue(moodName);


    moodColor = color(130, 50, map(moodValue, 1, 7, 0, 240));


    fill(moodColor, 128);


    posX = map(moodValue, 0, 8, 10, width-10);
    
    posY = map(moodDay,1,31,2,height-40);
    
    println(moodDate.split(" "));
    
  }

  void render() {

    text(moodName, posX, height -20);

    pushMatrix();
    noStroke();
    translate(posX, posY);
    ellipse(0, 0, 5, 5 );
    popMatrix();
  }
}

float getMoodValue(String moodName) {


  if (moodName.equals(": D") == true) {
    return 7;
  }


  if (moodName.equals(": )") == true) {
    return 6;
  }


  if (moodName.equals(": ]") == true) {
    return 5;
  }


  if (moodName.equals(": |") == true) {
    return 4;
  }


  if (moodName.equals(": [") == true) {
    return 3;
  }


  if (moodName.equals(": (") == true) {
    return 2;
  }

  if (moodName.equals(":'(") == true) {
    return 1;
  }

  println(moodName);
  return 0;
}

