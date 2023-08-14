void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255);
  
  
  color[] colors = {color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), color(255, 255, 0), color(0, 255, 255), color(255, 0, 255)};
  
  
  int[] sizes = {20, 30, 40, 50, 60};
  
  // 
  for (int i = 0; i < 50; i++) {
    // 
    int shape = int(random(2));
    color randomColor = colors[int(random(colors.length))];
    int randomSize = sizes[int(random(sizes.length))];

    if (shape == 0) {
     
      int x = int(random(width));
      int y = int(random(height));
      fill(randomColor);
      ellipse(x, y, randomSize, randomSize);
    } else {
      // 
      int x = int(random(width - randomSize));
      int y = int(random(height - randomSize));
      fill(randomColor);
      rect(x, y, randomSize, randomSize);
    }
  }
}
