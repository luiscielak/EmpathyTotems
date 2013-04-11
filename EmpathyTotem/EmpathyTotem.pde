//  emo level
//  Luis Cielak
//  2013-03-07

import au.com.bytecode.opencsv.*;

ArrayList<Mood> moods = new ArrayList();


long startTime = -1;
long endTime = 0;
long currentTime = 0;
int timeStep = 10;           // 1000 -> 1 frame per second.   1000 *10 -> 10 seconds per frame; 1000/60 -> real time
long timeRange = 0;

float t;
float tRate=100000;

void setup() {
  background(20);
  size(800, 600);
//  size(5746,3312);
//   size(screenWidth,screenHeight);
  smooth();

  MakeMoods();

  timeRange = endTime - startTime;
  //  println(startTime);
  //  noLoop();
  // set current time = to start time
  currentTime = startTime;
}

void draw() {
  background(20);

  t=(int)map(millis()%tRate, 0, tRate, startTime, endTime);

  fill(200);
  text((int)t, 10, 15);




  for (Mood m:moods) {
    if (t==m.birthTime) {
      text(m.moodDate, width-width/4, 15);
      text(m.moodName, width/2, 15);
//      stroke(200,260);
//      line(width/2, 20, m.targetX,m.targetY);
    }
    if (t>m.birthTime) {
      m.update();
      m.render();
    }
  }
}

void MakeMoods() {
  try {
    CSVReader reader = new CSVReader(new FileReader(sketchPath + "/data/mood.csv"));
    String [] nextLine;
    while ( (nextLine = reader.readNext ()) != null) {
      // create a new mood object
      Mood m = new Mood();
      m.fromCSV(nextLine);

      if (m.birthTime < startTime || startTime < 0) startTime= m.birthTime;
      if (m.birthTime > endTime) endTime= m.birthTime;

      moods.add(m);
      m.moodIndex = moods.size();
      m.index++;
    }

    println("Total records: "+moods.size());
  } 
  catch (Exception e) {
    println(e);
  }
}

