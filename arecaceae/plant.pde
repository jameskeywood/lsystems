base b;
section s;
leaf l;

class plant{
  String str = "S";
  float len;
  float angle = 0.1*PI;
  float angleX = 0.3*PI;
  
  void display(){
    len = 50;
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'B':
          fill(99, 69, 48);
          b = new base(len, 0, 0, 0);
          b.display();
          break;
        case 'F':
          len *= 0.97;
          fill(99, 69, 48);
          s = new section(len, 0, 0, 0);
          s.display();
          translate(len, 0);
          break;
        case 'L':
          fill(43, 135, 52);
          l = new leaf(6*len, 20, 0, 0);
          l.display();
          break;
        case '+':
          rotateX(angleX);
          break;
      }
    }
  }
  
  void expand(){
    String newString = "";
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'S':
          newString += "BFBL";
          break;
        case 'F':
          newString += "FF";
          break;
        case 'L':
          newString += "L+L";
          break;
        default:
          newString += str.charAt(i);
          break;
      }
    }
    str = newString;
  }
}
