// FetchEmo
// HTTP request to fetch and parse emotion data
// Luis Cielak
// 2013-04-15

String feed = "http://fstraat.webfactional.com/emto/getLastEmotion.php";

// Retrieve feed every 60 seconds
int interval = 10;

// Last fetch counter
int lastTime;


// Mood variables

void setup() {
  size(40, 40);

  frameRate(10);

  // Initialize counter
  lastTime = 0; 

}


void draw() {
  fetchData();
  
  
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
        if(m[1].equals("anxiety")) println(m[1]);
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

