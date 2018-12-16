import processing.video.*;

Movie video;
PImage image1;
PImage image2;

float x = 0;

void setup() {
  size(800, 360);
  
  video = new Movie(this, "moj_film_z_wakacji.mov");
  video.loop();
}

void draw() {
  x = x + 0.05;
  
  tint(255, 255, 255);
  image(video, 0, 0);
  image1 = get(0, 0, 800 / 2, 360);
  image2 = get(800 / 2, 0, 800 / 2, 360);
  
  tint(sin(x) * 100 + 100, cos(x * 2) * 100 + 100, 255);
  image(image1, 0, 0);
  
  tint(255, 255, 255);
  image(image2, 800 / 2, 0);
}

void movieEvent(Movie video) {
  video.read();
}
