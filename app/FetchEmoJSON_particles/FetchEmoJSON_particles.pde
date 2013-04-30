// FetchEmoJSON_particles.pde
// Particle system for emotion data
// Luis Cielak

import org.json.*;

String feed = "http://fstraat.webfactional.com/emto/getEmotionsJSON.php";

ArrayList<Emotion> emotions = new ArrayList<Emotion>();

ArrayList<Particle> particles;

ParticleSystem ps;

void setup() {
  size(600, 600);
  smooth();

  fetchData();

  particles = new ArrayList<Particle>();

  ps = new ParticleSystem(new PVector(width/2, 50));

  for (Emotion e:emotions) {
    //    //    e.run();
    //
    ps.addParticle(width/2,0);
  }
}


void draw() {
  background(40);

  ps.run();
}

void fetchData() {

  String request = feed;
  String result = join(loadStrings(request), "");

  int total = 0;  

  try {
    JSONObject data = new JSONObject("{'result':" + result + "}");
    JSONArray results = data.getJSONArray("result");

    total = results.length();

    // Parse JSON and create one emotion object per record
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

