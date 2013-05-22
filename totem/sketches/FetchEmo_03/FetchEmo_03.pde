// FetchEmo
// HTTP request to fetch and parse emotion data
// Luis Cielak
// 2013-04-15

String feed = "http://fstraat.webfactional.com/emto/getLastEmotion.php";

// Retrieve feed every 60 seconds
int interval = 10;

// Last fetch counter
int lastTime;

String currentEmo;

color col = 255;


color[] palette = {
  #f59898, // anxiety
  #f7ebb4, // arousal
  #f6f699, // flow 
  #d8ceec, // worry 
  #fcfcf6, // neutral
  #e9f7b3, // control
  #99b7e6, // apathy 
  #c2e9e0, // boredom 
  #97f597  // relaxation
};



void setup() {
  size(400, 400);

  frameRate(10);

  // Initialize counter
  lastTime = 0;
}


void draw() {
  background(col);


  fetchData();
  updateColor();
}

void updateColor() {
//  col = palette[(int)random(palette.length)];
  
  
  if(currentEmo.equals("anxiety")) col = #f59898;
  if(currentEmo.equals("arousal")) col = #f7ebb4;
  if(currentEmo.equals("flow")) col = #f6f699;
  if(currentEmo.equals("worry")) col = #d8ceec;
  if(currentEmo.equals("neutral")) col = #D8D8D8;
  if(currentEmo.equals("control")) col = #e9f7b3;
  if(currentEmo.equals("apathy")) col = #99b7e6;
  if(currentEmo.equals("boredom")) col = #c2e9e0;
  if(currentEmo.equals("relaxation")) col = #97f597;
  
/*  
#anxiety,#anxiety:hover {
	background-color: #f59898;
}

#arousal, #arousal:hover {
	background-color: #f7ebb4;
}

#flow, #flow:hover {
	background-color: #f6f699;
}

#worry, #worry:hover {
	background-color: #d8ceec;
}

#neutral, #neutral:hover {
	background-color: #D8D8D8; 	 
}

#control, #control:hover {
	background-color: #e9f7b3;
}

#apathy, #apathy:hover {
	background-color: #99b7e6;
}

#boredom, #boredom:hover {
	background-color: #c2e9e0;
}

#relaxation, #relaxation:hover {
	background-color: #97f597;
}

*/

  
  
}

void fetchData() {

  //  Variables to parse data
  String data;
  String chunk;


  try {
    URL url = new URL(feed);
    URLConnection conn = url.openConnection();
    conn.connect();

    // Read and buffer data
    BufferedReader in = new
      BufferedReader(new InputStreamReader(conn.getInputStream()));

    while ( (data = in.readLine ()) !=null) {

      String[] m = match(data, "<span id='emo_name'>(.+?)</span>");
      if (m != null) {
        currentEmo = m[1];
        println(m[1]);
      }
    }

    // enter the max number of references here
  }
  // Error handling 
  catch (Exception ex) {
    ex.printStackTrace();
    System.out.println("ERROR: "+ex.getMessage());
  }
}

