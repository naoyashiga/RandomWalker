class Walker {
  float x;
  float y;
  float vx;
  float vy;
  
  Circle c;
  Circle[] circles;

  int circleSize = 3;
  
  Walker() {
    x = random(0, width);
    y = random(0, height);

    vx = 0;
    vy = random(0.05, 1.0);
    
    int i;
    circles = new Circle[circleSize];
    
    for(i = 0; i < circleSize; i++) {
      c = new Circle();
      circles[i] = c;
    }
  }
  
  void render() {
    fill(255);
    noStroke();
    
    float r = vy + 0.1;
    ellipse(x,y,r,r);
    //float r = vy + 0.1;
    //ellipse(x,y,r,r);
  }
  
  void walk() {
    
    vx = random(-vy, vy);

    if(y > height) {
      y = -10;
    }
    
    //int i;
    //for(i = 0; i < circleSize; i++) {
    // Circle currentC = circles[i];
    // float len = dist(currentC.x, currentC.y, x, y);
      
    // if(len < currentC.r) {
    //   vx = random(-vy * 30, vy * 30);
    // }

    //}
    
    float len = dist(width / 2, height / 2, x, y);
    
    //float len = dist(random(0, width), height / 2, x, y);
    
    if(len < 100) {
      vx = random(-vy * 30, vy * 30);
    }
    
    x += vx;
    y += vy;
    
    x = constrain(x, 0, width - 1);
    //y = constrain(y, 0, height - 1);
  }
}