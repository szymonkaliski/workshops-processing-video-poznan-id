float x[] = new float[600];
float y[] = new float[600];

void setup() {
  size(600, 600);
  background(255);

  for (int i = 0; i < x.length; i = i + 1) {
    x[i] = i;
    y[i] = 300;
  }
}

void draw() {
  noStroke();
  fill(255, 255, 255, 4);
  rect(0, 0, 600, 600);

  for (int i = 0; i < x.length; i = i + 1) {
    fill(120, 120, i / 2);
    ellipse(x[i], y[i], 4, 4);

    x[i] = x[i] + random(-4, 4);
    y[i] = y[i] + random(-4, 4);
  }
}
