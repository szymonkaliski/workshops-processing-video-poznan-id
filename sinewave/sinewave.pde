int x = 50;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);

  x = x + 1;

  noStroke();

  for (int i = 0; i < 60; i = i + 1) {
    fill(i * 10, (10 - i) * 30, i*20);
    ellipse(sin(x * 0.01 + i * 0.2) * 395 + 395, 10 + i * 10, 10, 10);
  }
}
