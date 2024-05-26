plant p1;

void setup(){
  size(1000, 1000, P3D);
  colorMode(RGB, 255, 255, 255);
  
  p1 = new plant();
}

void draw(){
  background(77, 145, 161);
  lights();
  pushMatrix();
    translate(width * 0.5, height - 50);
    rotate(-0.5 * PI);
    rotateX(0.01 * PI * frameCount);
    p1.display();
  popMatrix();
  if (frameCount < 6){
    p1.expand();
  }
}
