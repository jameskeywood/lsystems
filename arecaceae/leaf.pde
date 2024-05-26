class leaf{
  int x;
  int y;
  int z;
  float len;
  
  leaf(float Len, int X, int Y, int Z){
    this.len = Len;
    this.x = X;
    this.y = Y;
    this.z = Z;
  }
  
  void display(){
    // triangle
    beginShape();
    vertex(x, y, z);
    vertex(x, len, z);
    vertex(-len, len, z);
    endShape();
    
    beginShape();
    vertex(x, y, z);
    vertex(x, y, len/10);
    vertex(x, len, len/10);
    vertex(x, len, z);
    endShape(); 
   
    beginShape();
    vertex(x, len, z);
    vertex(x, len, len/10);
    vertex(-len, len, len/10);
    vertex(-len, len, z);
    endShape();
    
    beginShape();
    vertex(-len, len, z);
    vertex(-len, len, len/10);
    vertex(x, y, len/10);
    vertex(x, y, z);
    endShape();
    
    // triangle
    beginShape();
    vertex(x, y, len/10);
    vertex(x, len, len/10);
    vertex(-len, len, len/10);
    vertex(x, y, len/10);
    endShape();
  }
  
}
