class base{
  int x;
  int y;
  int z;
  float len;
  
  base(float Len, int X, int Y, int Z){
    this.len = Len;
    this.x = X;
    this.y = Y;
    this.z = Z;
  }
  
  void display(){
    beginShape();
    vertex(x, y, -len);
    vertex(x, len, -0.5*len);
    vertex(x, len, 0.5*len);
    vertex(x, y, len);
    vertex(x, -len, 0.5*len);
    vertex(x, -len, -0.5*len);
    vertex(x, y, -len);
    endShape();
  }
  
}
