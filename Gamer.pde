GUI_Projekt g = new GUI_Projekt();

GUI_Projekt.Button buttonSlassekamp = g.new Button(340, 60, 150, 50, "Slå!", this);


void setup() {
  size(500, 300); 

  buttonSlassekamp.addAction(new GUI_Projekt.Action() {   
    public void execute() {
      print("av!");
    }
  }
  );
}

void draw() {
  clear();
  background(13, 26, 71);
  buttonSlassekamp.display();
  fill(255);
  textAlign(CENTER);
}

void mousePressed() {
  buttonSlassekamp.click();
}
