class plant{
  String str = "S";
  float len = 4;
  float angle = 0.1*PI;
  float angleX = 0.3*PI;
  
  void display(){
    float sWeight = 20; // stroke weight
    float brightness = 10;
    float hue = 0;
    for (int i = 0; i < str.length(); i++){
      switch(str.charAt(i)){
        case 'F':
          strokeWeight(sWeight);
          stroke(hue, 100, brightness);
          line(0, 0, len, 0);
          translate(len, 0);
          break;
        case 'l':
          rotate(-angle);
          rotateX(angleX);
          break;
        case 'r':
          rotate(angle);
          rotateX(angleX);
          break;
        case '[':
          pushMatrix();
          break;
        case ']':
          popMatrix();
          break;
        case 'u': // go up the branch
          sWeight *= 0.8;
          brightness *= 1.5;
          hue = (hue + 10) % 360;
          break;
        case 'd': // go down the branch
          sWeight *= (1.0/0.8);
          brightness *= (1.0/1.5);
          hue = ((hue - 10) + 360) % 360;
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
            newString += "[ullFBd][urFBd]";
          }
          else{
            newString += "[ulFBd][urrFBd]";
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
