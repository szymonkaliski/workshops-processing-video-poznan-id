import processing.video.*;

Movie video;

int stepSize = 30;
float x = 0.0;

void setup() {
  size(800, 360);
  
  video = new Movie(this, "moj_film_z_wakacji.mov");
  video.loop();
}

void draw() {
  noStroke();
  x = x + 0.01;
  stepSize = round(sin(x) * 20 + 25);
  
  for (int i = 0; i < 800 / stepSize; i = i + 1) {
    for (int j = 0; j < 360 / stepSize; j = j + 1) {
      color videoColor = video.get(i * stepSize, j * stepSize);
      fill(videoColor);
      int x = i * stepSize;
      int y = 360 - j * stepSize;
      rect(x, y, stepSize, stepSize);
    }
  }
}

void movieEvent(Movie video) {
  video.read();
}
