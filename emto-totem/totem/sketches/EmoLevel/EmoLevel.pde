//  Luis Cielak
//  emo level
//  2013-03-07

import au.com.bytecode.opencsv.*;

ArrayList<Mood> moods = new ArrayList();

Date now = new Date();

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
SimpleDateFormat time_sdf = new SimpleDateFormat("HH:mm:ss");
SimpleDateFormat date_sdf = new SimpleDateFormat("MM/dd/yyy");

void setup() {
  size(400, 800);
  background(20);
  smooth();

  getCSV();
  
  noLoop();
}

void draw() {

  for (Mood m:moods) {
    m.update();
    m.render();
  }
}

void getCSV() {
  try {
    CSVReader reader = new CSVReader(new FileReader(sketchPath + "/data/mood.csv"));
    String [] nextLine;
    while ( (nextLine = reader.readNext ()) != null) {
      // create a new mood object
      Mood m = new Mood();
      m.fromCSV(nextLine);
      moods.add(m);

      m.moodIndex = moods.size();
      m.index++;

      // nextLine[] is an array of values from the line
      //        System.out.println(nextLine[0] + nextLine[1] + "etc...");
    }
    println("Total records: "+moods.size());
  } 
  catch (Exception e) {
    println(e);
  }
}

