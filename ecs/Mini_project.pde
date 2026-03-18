// Ben Stalsberg | March 17 | Mini Project
int x;
int y;
int size = 50;
int score = 0;

void setup() {
  size(600, 400);
  x = int(random(width));
  y = int(random(height));
}

void draw() {
  background(220);
  
  // draw target
  fill(255, 0, 0);
  ellipse(x, y, size, size);
  
  // score text
  fill(0);
  textSize(20);
  text("Score: " + score, 10, 30);
}

// when mouse is clicked
void mousePressed() {
  
  // distance from mouse to circle
  float d = dist(mouseX, mouseY, x, y);
  
  // check if click hit the circle
  if (d < size/2) {
    score = score + 1;
    
    // move target to new spot
    x = int(random(width));
    y = int(random(height));
  }
}
