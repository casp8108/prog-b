class Bold extends Form {
  float x=100, y=100, b=50;
  boolean valgt;

  Bold(float x, float y, float b) {
    super(x, y, b);
  }

  void flyt(float mx, float my) {
    super.flyt(x, y);

    cx = mx;
    cy = my;
  }

  void trykker(float mx, float my) {
    super.trykker(x, y);

    cx = mx;
    cy = my;
  }

  void display() {
    if (valgt) {
      fill(200, 0, 0);
    } else { 
      fill(0, 200, 0);
    }
    rectMode(CENTER);
    ellipse(x, y, b, b);
  }
}
