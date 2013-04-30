// FetchEmoJSON.pde
// Luis Cielak
// 2013-04-26

import org.json.*;

String feed = "http://fstraat.webfactional.com/emto/getEmotionsJSON.php";

ArrayList<Emotion> emotions = new ArrayList<Emotion>();

void setup() {
  size(512, 512);
  smooth();

  getData();
  //  fetchData();
}


void draw() {
}


void getData() {

  String request = feed;
  String result = join( loadStrings( request ), "");

  int total = 0;
  
      println(result);

  try {
    JSONObject data = new JSONObject("{'result':" + result + "}");


    //    JSONArray results = data.getJSONArray("id");
    //    println(results);
    //    total = data.getInt("total");
    //    println ("There were " + total + " occurences of the term " + word + " between " + beginDate + " and " + endDate);
  }
  catch (JSONException e) {
    println ("There was an error parsing the JSONObject.");
  };

  //  writeFile(result);
  println(total);
  //  return(total);
};




void fetchData() {

  String data;

  try {
    URL url = new URL(feed);
    URLConnection conn = url.openConnection();
    conn.connect();

    // Read and buffer data
    BufferedReader in = new
      BufferedReader(new InputStreamReader(conn.getInputStream()));


    while ( (data = in.readLine ()) !=null) {



      //println(data);
      //      String[] m = match(data, "'695'");
      //      println(m);

      //      if (m != null) {
      //        emotions.add(new Emotion());
      //        println(emotions.size());

      //        currentEmo = m[1];
      //        println(currentEmo);
      //      }

      //      String[] n = match(data, "<span id='emo_dtm'>(.+?)</span>");
      //      if (n != null) {
      //        emoDate = n[1];
      //        println(emoDate);
      //      }
    }
  }
  // Error handling 
  catch (Exception ex) {
    ex.printStackTrace();
    System.out.println("ERROR: "+ex.getMessage());
  }
}

