import processing.video.*;

Movie video;

int stepSize = 2;

void setup() {
  size(800, 360);

  video = new Movie(this, "moj_film_z_wakacji.mov");
  video.loop();
}

void draw() {
  noStroke();
  
  for (int j = 0; j < 360 / stepSize; j = j + 1) {
    color tmp[] = new color[800 / stepSize];

    for (int i = 0; i < 800 / stepSize; i = i + 1) {
      color videoColor = video.get(i * stepSize, j * stepSize);
      tmp[i] = videoColor;
    }

    if (abs(j * stepSize - mouseY) < 40) {
      tmp = sort(tmp);
    }

    for (int i = 0; i < 800 / stepSize / 2; i = i + 1) {
      fill(tmp[800 / stepSize / 2 - i]);
      int x = 800 / 2 + i * stepSize;
      int y = j * stepSize;
      rect(x, y, stepSize, stepSize);
    }

    for (int i = 0; i < 800 / stepSize / 2; i = i + 1) {      
      fill(tmp[i]);
      int x = i * stepSize;
      int y = j * stepSize;
      rect(x, y, stepSize, stepSize);
    }
  }
}

void movieEvent(Movie video) {
  video.read();
}
