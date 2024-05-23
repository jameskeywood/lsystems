// https://www.youtube.com/watch?v=1AB3N3nrVwQ&t=486s

plant p1;

void setup(){
  size(800, 1000);
  p1 = new plant();
  colorMode(HSB, 360, 100, 100);
}

void draw(){
  background(200);
  pushMatrix();
    translate(width * 0.5, height - 10);
    rotate(-0.5*PI);
    p1.display();
  popMatrix();
  if (frameCount < 12){
    p1.expand();
  }
}
