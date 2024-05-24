import java.util.Stack;

class plant{
  String str = "S";
  float len = 4;
  float angle = 0.1*PI;
  float angleX = 0.3*PI;
  
  void display(){
    Stack<Float> thicknesses = new Stack<Float>();
    
    float thickness = 100;
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'F':
          if (thickness > 5){
            thickness *= 0.98;
          }
          strokeWeight(thickness);
          stroke(30, 100, 20);
          line(0, 0, len, 0);
          translate(len, 0);
          break;
        case 'L':
          strokeWeight(2);
          stroke(120, 100, 20);
          fill(120, 100, 40);
          triangle(0, 0, 0, 20, 20, 20);
          break;
        case '-':
          rotate(-angle);
          rotateX(angleX);
          break;
        case '+':
          rotate(angle);
          rotateX(angleX);
          break;
        case '[':
          pushMatrix();
          thicknesses.push(thickness);
          break;
        case ']':
          popMatrix();
          thickness = thicknesses.pop();
          break;
      }
    }
  }
  
  void expand(){
    String newString = "";
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'S':
          newString += "FB";
          break;
        case 'F':
          if (random(100) < 50){
            newString += "FF";
          }
          else{
            newString += "F";
          }
          break;
        case 'B':
          if (random(100) < 50){
            newString += "[--FBL][+FBL]";
          }
          else{
            newString += "[-FBL][++FBL]";
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
