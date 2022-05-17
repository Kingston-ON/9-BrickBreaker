class Star {

  //instance variables
  float x, y, vx, vy, size;
  int h, s, b;

  //constructor-special function that defines how
  //            a object of this class is created
  //            defunes initial calues for fields
  Star() {
    x = random(0, width);
    y = random(0, width);
    size = random(0, 49);
    h=(int)random(255);
    s=255;
    b=255;
  }
  //behavior funcrions- defines what a star does
  void show() {
    stroke(h, s, b);
    noFill();
    ellipse(x, y, size,size/2);
  }

  void act() {
    size = size+vy;
    if (size>50) {
      size = 0;
    }
    size += 1;
  }
}
