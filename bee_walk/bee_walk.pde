PShape creature, head, body; //shapes

ArrayList <bee> thebees = new ArrayList <bee>(); //vi har bier i et array der hedder "thebees" og vi kan referere til alle bier i det array

void setup() {
  size(1000, 800);
  background(0);
  fill(0);
  colorMode(HSB, 360, 100, 100);

  //shapes
  //parent group
  creature = createShape(GROUP);

  //body parts
  head = createShape(RECT, 15, -20, 20, 20);
  head.setFill(color(0, 0, 0));
  head.setStroke(false);

  body = createShape(RECT, 0, 0, 50, 50);
  body.setFill(color(63.3, 100, 85.49));
  body.setStroke(false);

  //add body parts as children
  creature.addChild(head);
  creature.addChild(body);
}

void draw() {
  clear();
  background(100, 30, 50);
  float f = random(1, 100); //hvis f er mindre end 5, så spawner der bi(er). Det vil sige, at der hver frame er en 5% chance for at spawne
  if (f<5) {
    for (int i = 0; i<random(0, 3); i++) { //spawner mellem 1-3 bier
      thebees.add(new bee(random(1, 5), random(1, 5))); //tilfældig xspeed og yspeed (speex, speedy) man kunne også have valgt at definere speedx og speedy i method
    }
  }
  for (bee b : thebees) {
    b.update();
  }

  fill(50, 80, 60);
  rect(0, 0, 100, 100); //beehive
}

class bee {
  float xpos, ypos, speedx, speedy, size;
  bee(float sx, float sy) {
    speedx=sx;
    speedy=sy;
  }
  void update() {
    //calculations
    xpos+=speedx;
    ypos+=speedy;
    size+=(xpos+ypos)/10000; 

    //shapes
    pushMatrix();
    translate(xpos, ypos);
    scale(size);
    shape(creature);
    popMatrix();
  }
}
