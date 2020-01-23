void setup() {
  size(500, 500);
  colorMode(HSB,360,100,100);
}

void draw() {
  clear();
  background(0,0,0);
  Button b;
  b = new Button(new PVector(100, 100),50, color(330,100,100));
  b.buttonUpdate();
}


class Button {
  PVector buttonPos;
  float buttonExtent;
  color buttonColor;

  Button(PVector a, float b, color c) {
    buttonPos = a;
    buttonExtent = b;
    buttonColor = c;
  }
  
  void buttonUpdate() {
    fill(buttonColor);
    circle(buttonPos.x, buttonPos.y, buttonExtent);
    
    PVector mousePos = new PVector(mouseX, mouseY);
    if(mousePos.dist(buttonPos)<buttonExtent/2 && mousePressed==true){
      
    }
  }
}
