import processing.video.*;

Movie video;

int currentRow = 0;
int currentCol = -1;

void setup() {
  size(800, 800);

  video = new Movie(this, "moj_film_z_wakacji.mov");
  video.loop();
}

void draw() {
  image(
  video, 
  currentCol * 800 / 8, 
  currentRow * 360 / 8, 
  800 / 8, 
  360 / 8
  ); 
}

void movieEvent(Movie video) {
  video.read();
  
  currentCol = currentCol + 1;
  if (currentCol > 7) {
    currentRow = currentRow + 1;
    currentCol = 0;
  }
}
