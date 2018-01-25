int N_THREADS = 100;
void setup() {
  //size(600, 600);
  fullScreen();

  background(255);
  noFill();
  stroke(255);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  fill(270, 0, 100, 8);
  noStroke();
  rect(0, 0, width, height);
  noFill();
  strokeWeight(2);

  for (int i = 0; i < N_THREADS; i++) {
    float hue = map(i, 0, N_THREADS, 0, 360);
    stroke(hue, 100, 100, 128);
    
    beginShape();
    for (int x = -10; x < width + 11; x += 10) {
      float n = noise(x * 0.001, frameCount * 0.01, i * 0.02);
      float y = map(n, 0, 1, 0, height);
      curveVertex(x, y);
    }
    endShape();
  }
}
