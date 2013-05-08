// FetchEmoJSON.pde
// Luis Cielak
// 2013-04-26

import org.json.*;

String feed = "http://fstraat.webfactional.com/emto/getEmotionsJSON.php";

ArrayList<Emotion> emotions = new ArrayList<Emotion>();

void setup() {
  size(512, 512);
  smooth();

  fetchData();
}


void draw() {
  background(40);

  for (Emotion e:emotions) {
    e.run();
  }

}


void fetchData() {

  String request = feed;
  String result = join( loadStrings( request ), "");

  int total = 0;

  try {
    JSONObject data = new JSONObject("{'result':" + result + "}");
    JSONArray results = data.getJSONArray("result");

    total = results.length();

    // Parse JSON object and create an emo object per record
    for (int i=0; i<total; i++) {

      JSONObject row = results.getJSONObject(i);

      Emotion emo = new Emotion();

      emo.id = row.getString("id");
      emo.name = row.getString("name");
      emo.challenge = row.getInt("challenge");
      emo.skill = row.getInt("skill");
      emo.dtm = row.getString("dtm");

      emotions.add(emo);

    }
  }
  catch (JSONException e) {
    println ("There was an error parsing the JSONObject.");
  };

  println(total+" records");
  println(emotions.size()+" emotions");
};

