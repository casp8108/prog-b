PImage astronaut;
PImage astronaut2;
PImage gun;
PImage gun2;
PImage sgun;
PImage sgun2;
PFont Ocra;

ArrayList <goon> enemies = new ArrayList <goon>();

void setup(){
  size(1600,800);
  frameRate(60);
  
  astronaut = loadImage ("astronaut.png");
  astronaut2 = loadImage ("astronaut2.png");
  gun = loadImage("tgun.png");
  gun2 = loadImage("tgun2.png");
  Ocra = createFont("OCRAEXT.TTF",72);
}
int timer;
boolean direction;
boolean hit;
boolean pause;
int health = 10;//astronauts health
int firerate = 5;//frames between each shot
int trigger = firerate;//hits 0 shoot
int damage = 5;//damage of gun

void draw(){
  clear();
  noStroke();
  background(230,130,50);
  
  timer -= 3;
  trigger -= 1;
  
   //astronaut turning  
  if(direction)  {image (astronaut,width/2-64,height/1.5); image (gun,width/2-32,height/1.45);}
  else           {image (astronaut2,width/2-64,height/1.5); image (gun2,width/2-96,height/1.45);}
  
  for (goon g : enemies) {
    g.spawn();}
  
  fill(250,200,60);
  rect(0,height/1.5+128,width,height);
  
  fill(200,210,100);
  stroke(0);
  if(timer<0) {
      enemies.add(new goon());
      timer=500;
    }
 
  if(hit){
  health-=1;
  hit=false;
  }
  if(health<=0){
    println("Game over");
  }
 
}

void keyPressed(){ //controls
  if(key=='p'){
    pause=true;
    if(pause){
    noLoop();
    fill(0,230);
    rect(0,0,width,height);
    fill(255);
    textFont(Ocra);
    rect(width/2-200,250,10,100);
    rect(width/2-200,450,10,100);
    rect(width/2-200,650,10,100);
    
    text("MARS DEFENDER",width/2-200,100);
    text("Resume",width/2-190,325);
    text("Weapons",width/2-190,525);
    text("Quit",width/2-190,725);
      }
    }

  if(key == 'd'){
  direction=true;}
  if(key == 'a'){
  direction=false;}
  
  if(key == '1'){
  gun=loadImage("tgun.png");
  gun2=loadImage("tgun2.png");
  damage=5; firerate=10; trigger = 10;}
  
    if(key == '2'){
  gun=loadImage("sgun.png");
  gun2=loadImage("sgun2.png");
  damage=25; firerate=30; trigger = 30;}
}

void mousePressed(){
  if(pause){
    if(mouseX>width/2-210&&mouseX<width/2+210&&mouseY<350&&mouseY>250){loop();}
    if(mouseX>width/2-210&&mouseX<width/2+210&&mouseY<550&&mouseY>450){loop();}
    if(mouseX>width/2-210&&mouseX<width/2+210&&mouseY<750&&mouseY>650){exit();}
  }
}

class goon{
  float xpos; float speed; boolean dead; int goonhealth;
  goon (){
    xpos = random(1)>0.5?0:width-50;
    speed = 1.5;
    goonhealth = 50;
  }
  void spawn(){
    if(dead==false){
    if(xpos > width-51){speed*=-1;}
    fill(30,100,0);
  rect(xpos+=speed,615,50,50);
    fill(240);
  rect(xpos+=speed,590,goonhealth,10);
  
  if(xpos==constrain(xpos,width/2-128,width/2+64)){ //if it hits the player
    hit=true;
    dead=true;
    }
    
  if(xpos>width/2 && trigger<0 && direction || xpos<width/2 && trigger<0 && direction==false) {goonhealth-=damage; trigger=firerate;}
  if(goonhealth<=0){dead=true;}
    }
  }
}
