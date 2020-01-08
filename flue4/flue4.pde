ArrayList<Flue> flueListe = new ArrayList<Flue>();



void setup() {
  size(500, 500);
}



void draw() {
  clear();
  for (int i=0; i<flueListe.size(); i++) {

    Flue f = flueListe.get(i);

    f.tegnFlue();

    f.flyt();
  }
}



void keyPressed() {
  if (key=='e') {
    flueListe.add(new Flue(2));
  } else {
    flueListe.add(new Flue());
  }
}



void mousePressed() {

  flueListe.add(new Flue(mouseX, mouseY));
}



/////////////////////////////////////////////////////////

class Flue {



  float positionX, positionY;

  float distanceFlyttet;

  float vinkel = 0; 

  float size;



  Flue() {

    positionX  = random(0, height); //position *x*, random(0, *height*) ???

    positionY  = random(0, width);

    vinkel     = random(0, 2*PI);

    size       = 1;
  }



  Flue(float a, float b) {

    positionX = a;

    positionY = b;

    vinkel    = random(0, 2*PI);

    size      = 1;
  }

  Flue(float s) {

    positionX = random(0, height);

    positionY = random(0, width);

    vinkel    = random(0, 2*PI);

    size      = s;
  }



  void flyt() {

    distanceFlyttet = distanceFlyttet + 0.5;
    
    println(distanceFlyttet);
  }



  void tegnFlue() {
    //beregninger
    if (positionX+(distanceFlyttet*cos(vinkel))>width|positionX+(distanceFlyttet*cos(vinkel))<0) {
      println("den er ude af x");
    }
    if (positionY+(distanceFlyttet*sin(vinkel))>height|positionY+(distanceFlyttet*sin(vinkel))<0) {
      println("den er ude af y");
    }

    //tegn
    pushMatrix();

    scale(size);

    translate(positionX, positionY);

    rotate(vinkel);

    translate(distanceFlyttet, 0);

    ellipse(0, 0, 20, 8);

    ellipse(0, 0-8, 15, 10);

    ellipse(0, 0+8, 15, 10);

    ellipse(0+6, 0, 8, 8);

    popMatrix();
  }
}

//////////////////////////////////////////////////////
