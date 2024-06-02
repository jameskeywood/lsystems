class section{
  float len;
  float rad;
  int x;
  int y;
  int z;
  
  section(float Len, float Rad, int X, int Y, int Z){
    this.len = Len;
    this.rad = Rad;
    this.x = X;
    this.y = Y;
    this.z = Z;
  }
  
  void display(){
    // bottom
    beginShape();
    vertex(x, y, -rad);
    vertex(x, rad, -0.5*rad);
    vertex(x, rad, 0.5*rad);
    vertex(x, y, rad);
    vertex(x, -rad, 0.5*rad);
    vertex(x, -rad, -0.5*rad);
    vertex(x, y, -rad);
    endShape();
    
    beginShape();
    vertex(x, y, -rad);
    vertex(x, rad, -0.5*rad);
    vertex(len, rad, -0.5*rad);
    vertex(len, y, -rad);
    endShape();
    
    beginShape();
    vertex(x, rad, -0.5*rad);
    vertex(x, rad, 0.5*rad);
    vertex(len, rad, 0.5*rad);
    vertex(len, rad, -0.5*rad);
    endShape();

    beginShape();
    vertex(x, rad, 0.5*rad);
    vertex(x, y, rad);
    vertex(len, y, rad);
    vertex(len, rad, 0.5*rad);
    endShape();

    beginShape();
    vertex(x, y, rad);
    vertex(x, -rad, 0.5*rad);
    vertex(len, -rad, 0.5*rad);
    vertex(len, y, rad);
    endShape();

    beginShape();
    vertex(x, -rad, 0.5*rad);
    vertex(x, -rad, -0.5*rad);
    vertex(len, -rad, -0.5*rad);
    vertex(len, -rad, 0.5*rad);
    endShape();

    beginShape();
    vertex(x, -rad, -0.5*rad);
    vertex(x, y, -rad);
    vertex(len, y, -rad);
    vertex(len, -rad, -0.5*rad);
    endShape();
    
    // top
    beginShape();
    vertex(len, y, -rad);
    vertex(len, rad, -0.5*rad);
    vertex(len, rad, 0.5*rad);
    vertex(len, y, rad);
    vertex(len, -rad, 0.5*rad);
    vertex(len, -rad, -0.5*rad);
    vertex(len, y, -rad);
    endShape();
  }
  
}
