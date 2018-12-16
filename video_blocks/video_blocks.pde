import processing.video.*;
import controlP5.*;

Movie video;
ControlP5 cp5;

int stepSize = 4;

void setup() {
  size(800, 360);

  video = new Movie(this, "moj_film_z_wakacji.mov");
  video.loop();
  
  cp5 = new ControlP5(this);
  cp5.addSlider("stepSize").setRange(2, 30);
}

void draw() {
  background(0);
  noStroke();

  for (int j = 0; j < 360 / stepSize; j = j + 1) {
    for (int i = 0; i < 800 / stepSize; i = i + 1) {
      color videoColor = video.get(i * stepSize, j * stepSize);
      
      float videoBrightness = brightness(videoColor);
      float size = (videoBrightness / 255.0) * stepSize;
      
      fill(255);
      int x = i * stepSize;
      int y = j * stepSize;
      
      float dSize = stepSize - size;
      float halfDSize = dSize / 2.0;
      
      rect(x + halfDSize, y + halfDSize, size, size);
    }
  }
}

void movieEvent(Movie video) {
  video.read();
}
