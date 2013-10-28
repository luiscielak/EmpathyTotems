// Emotion class
class Emotion {
  String name;
  String feed = "http://fstraat.webfactional.com/emto/getLastEmotion.php";


  Emotion() {
  }

  void fetchData() {

    String data;

    try {
      URL url = new URL(feed);
      URLConnection conn = url.openConnection();
      conn.connect();

      // Read and buffer data
      BufferedReader in = new
        BufferedReader(new InputStreamReader(conn.getInputStream()));
      // Parse HTML
      while ( (data = in.readLine ()) !=null) {
        String[] m = match(data, "<span id='emo_name'>(.+?)</span>");
        if (m != null) {
          name = m[1];
          // println(name);
        }
      }
    }
    // Error handling 
    catch (Exception ex) {
      ex.printStackTrace();
      System.out.println("ERROR: "+ex.getMessage());
    }
  }

  String getEmotion() {
    return name;
  }
}

