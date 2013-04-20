class Mood {
  String moodName;
  String moodDate;
  String moodDayName;
  String moodMonthName;

  public long birthTime=0;

  int moodMonth;
  int moodDay;
  int moodHour;
  int moodMinute;


  float moodValue;


  float posX=width/2, posY=0;
  float targetX=posX, targetY=posY;
  float easing = 0.2;

  float d = 10;


  int moodIndex = 0;
  int index = 0;

  color moodColor = color(0, 0, 0);

  Mood() {
  }


  // Get data from CSV
  void fromCSV (String[] csv) {
    moodName = csv[0];
    moodDate = csv[1];

    // Apply datetime format
    SimpleDateFormat formatter=new SimpleDateFormat("EEE MMM d HH:mm:ss z yyyy");


    try {

      // Parse string date to Date object
      Date date = formatter.parse(moodDate);

      birthTime= date.getTime() / 1000 / 60 / 60;

      //      println(date+" "+date.getTime()+" "+date.getTime() / 1000+" "+timeRange+" "+startTime+" "+endTime);
    } 
    catch (ParseException e) {
      println("ERROR" + e.getMessage());
    }
  }



  void update() {

    moodValue = getMoodValue(moodName);
    moodColor = color(130, 50, map(moodValue, 7, 1, 0, 240));


    fill(moodColor, 100);


        targetX = map(birthTime, startTime, endTime, 0+20, width-20);    //     posX = map(birthTime,startTime,endTime+startTime,0,width);
       targetY = getMoodValue(moodName)* height/8;


    //   Ease X and Y position
    float dx = targetX - posX;
    if (abs(dx) > 1) {
      posX += dx * easing;
    }

    float dy = targetY - posY;
    if (abs(dy) > 1) {
      posY += dy * easing;
    }

    // Reset object position
    if (key == '0') {
      targetX = width/2;
      targetY = height/2;
    }


    if (key == '1') {
      targetX = map(birthTime, startTime, endTime, 0+20, width-20);    
      //      targetX = 0;
      targetY = height/2;
    }

    // Map X to birth time; Map Y to mood value
    if (key == '2') {
      targetX = map(birthTime, startTime, endTime, 0+20, width-20);    //     posX = map(birthTime,startTime,endTime+startTime,0,width);
      targetY = getMoodValue(moodName)* height/8;
    }

    if (key == '3') {
      noFill();
      stroke(240, 100);
      point(targetX, targetY);
    }

  }

  void render() {
    pushMatrix();
    noStroke();
    translate(posX, posY);
    rect(0, 0, d/2, d);
    popMatrix();
  }
}


float getMoodValue(String moodName) {

  // Convert mood value to emotion rate (1-7)

  if (moodName.equals(": D") == true) {
    return 1;
  }

  if (moodName.equals(": )") == true) {
    return 2;
  }

  if (moodName.equals(": ]") == true) {
    return 3;
  }

  if (moodName.equals(": |") == true) {
    return 4;
  }

  if (moodName.equals(": [") == true) {
    return 5;
  }

  if (moodName.equals(": (") == true) {
    return 6;
  }

  if (moodName.equals(":'(") == true) {
    return 7;
  }


  return 0;
}


//
// outlier removed: 
// : ),Fri Aug 10 00:14:02 UTC 2012,1.0,mood

