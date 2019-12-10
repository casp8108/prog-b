/*
* Flueopgaven.
 * Vi skriver CamelCase fordi vi er seje
 * Og "f" efter hvert float fordi C# traumaer.
 */

ArrayList <fly> flies = new ArrayList <fly>(); //ArrayList for hver type af flue. Det er nemmere at holde styr på en List.
ArrayList <fly> bigflies = new ArrayList <fly>(); 

void setup() {
  size(1000, 1000);
  rectMode(CENTER);
}

void draw() {
  clear();
  background(0);
  fill(255);
  stroke(255);
  for (fly f : flies) {
    f.update();
    f.findClosest();
    f.size = 10;
  }

  for (fly bf : bigflies) {
    bf.update();
    bf.size = 20;
  }
}

class fly {
  float xPos, yPos, size;
  fly(float x, float y) {
    xPos = x;
    yPos = y;
  }

  void update() {
    xPos+=random(-1f, 1f);
    yPos+=random(-1f, 1f);
    rect(xPos, yPos, size, size);
  }
  void findClosest() {
    FloatList pointsX, pointsY;

    pointsX = new FloatList();
    pointsY = new FloatList();

    for (fly fl : flies) {
      pointsX.append(fl.xPos-this.xPos);
      pointsX.sort();

      pointsY.append(fl.yPos-this.yPos);
      pointsY.sort();
    }

    if (pointsX.size()>1) {
      println(pointsX.get(1));
      line(this.xPos, this.yPos, pointsX.get(1)+xPos, pointsY.get(1)+yPos); //Lige nu trækker de streger til dne der er tættest på origo.
    }
  }
}

void mousePressed() {

  class sted { //Lokal 2-dimensionel vektor "detteSted". Det er meget smartere end mouseX og mouseY.
    int x, y;
    sted (int xP, int yP) {
      x=xP;
      y=yP;
    }
  }

  sted detteSted = new sted(mouseX, mouseY);

  flies.add(new fly(detteSted.x, detteSted.y));
}

void keyReleased() {
  if (key=='a') {
    flies.add(new fly((random(0, width)), (random(0, height))));
  }

  if (key=='d') {
    bigflies.add(new fly((random(0, width)), (random(0, height))));
  }
}
