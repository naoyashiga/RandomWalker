Walker w;
Walker[] walkers;

int walkerSize = 3000;

void setup() {
  size(650,850);
  
  int i;
  walkers = new Walker[walkerSize];
  
  for(i = 0; i < walkerSize; i++) {
    w = new Walker();
    walkers[i] = w;
  }
  
  frameRate(30);
  background(0);
}

void draw() {
  //background(0);
  fill(0, 10);
  rect(0, 0, width, height);
  
  int i;
  for(i = 0; i < walkerSize; i++) {
    walkers[i].walk();
    walkers[i].render();
  }
  
}