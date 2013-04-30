// FetchEmoJSON_particles.pde
// Luis Cielak
// 2013-04-30

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
}


void draw() {
  background(40);


  // Option #1 (move the Particle System origin)
  ps.origin.set(mouseX, mouseY, 0);

  ps.addParticle();
  ps.run();

  // Option #2 (move the Particle System origin)
  ps.addParticle(mouseX, mouseY);


  for (Emotion e:emotions) {
    //    e.run();
  }
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

