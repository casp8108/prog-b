PShape creature, head, body;
float posx=0;
float posy=1;

void setup() {
  size(700,500);
  background(0);
  fill(0);
  
  //shapes
  //parent group
  creature = createShape(GROUP);
  
  //body parts
  head = createShape(RECT, 15,-20,20,20);
  head.setFill(color(0,200,60));
  head.setStroke(false);
  
  body = createShape(RECT, 0,0,50,50);
  body.setFill(color(0,200,60));
  body.setStroke(false);
  
  //add body parts as children
  creature.addChild(head);
  creature.addChild(body);
}

void draw()  {
  //calculations
  creature.translate(posx,posy);
  creature.scale(1.01);
  
  //shapes
  clear();
  shape(creature);
  
  //logic (staircase feature)
  if (posy == 5){
    posx=5;
    posy=0;
    }
  else  {
  posx=0;
  posy=5;
  }
}
