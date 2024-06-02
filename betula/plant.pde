import java.util.Stack;

section s;

class plant{
  String str = "S";
  float len;
  float rad;
  float angle = 0.15*PI;
  float angleX = 0.3*PI;
  Stack<Float> rads = new Stack<Float>();
  
  void display(){
    len = 16;
    rad = 32;
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'F':
          noStroke();
          fill(232, 230, 227);
          s = new section(len, rad, 0, 0, 0);
          s.display();
          translate(len, 0);
          break;
        case 'R':
          rad *= 0.94;
          break;
        case '+':
          rotate(angle);
          rotateX(angleX);
          break;
        case '-':
          rotate(-angle);
          rotateX(angleX);
          break;
        case '[':
          pushMatrix();
          rads.push(rad);
          break;
        case ']':
          popMatrix();
          rad = rads.pop();
          break;
      }
    }
  }
  
  void expand(){
    String newString = "";
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'S':
          newString += "FRFRFRFRFRFRFRFRFRFRFRFRN";
          break;
        case 'N':
          if (random(100) > 75){
            if (random(100) > 50){
              newString += "[+FRFRN]N";
            }
            else{
              newString += "[-FRFRN]N";
            }
          }
          else{
            newString += "FRFRN";
          }
          break;
        default:
          newString += str.charAt(i);
          break;
      }
    }
    str = newString;
  }
}
