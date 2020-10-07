class Form {
  float cx, cy, cb;
  boolean valgt;

  Form(float x, float y, float b) {
    cx = x;
    cy = y;
    cb = b;
  }

  void flyt(float x, float y) {
    if (valgt) {
      this.cx = x; 
      this.cy = y;
    }
  }

  void trykker(float x, float y) {
    if (dist(x, y, this.cx, this.cy)<cb/2) valgt= !valgt; 
    else valgt = false;
  }
}

//Jeg tror det må være noget der er galt med superklassen. Måske noget med dens constructor.
