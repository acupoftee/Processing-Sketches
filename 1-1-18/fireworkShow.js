var fireworks = [];
var gravity;

function setup() {
  createCanvas(700, 400);
  colorMode(HSB);
  stroke(255);
  strokeWeight(4);
  gravity = createVector(0, 0.2)
  background(0);
  blendMode(ADD);
}

function draw() {
  colorMode(RGB);
  blendMode(BLEND);
  background(0, 0, 0, 25);
  if (random(1) < 0.03) {
    fireworks.push(new Firework());
  }

  for (var i = fireworks.length - 1; i >= 0; i--) {
    fireworks[i].update();
    fireworks[i].show();
    if (fireworks[i].done()) {
      fireworks.splice(i, 1);
    }
  } 
  console.log(fireworks.length);
}