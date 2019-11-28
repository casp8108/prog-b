//**VIGTIGT**
//Læs console output for instruktioner.


float CarPosX, CarPosY = 75;
float Speed = 1;
float CopSway;
int EscapeOMeter=0;
boolean Escape;

void setup() {
  size(1000, 600);

  print("Hold 1 nede for at sætte farten bagud, 2 for at sænke farten, 3 for at sætte farten op.\nPrøv at sætte farten op over 10.");
}

void draw() {
  CarPosX+=Speed;
  if (CarPosX>width) {
    CarPosX=0;
  }

  clear();

  background(0);
  fill(255);
  rect(0, 200, width, 10);
  rect(0, 400, width, 10);

  fill(255, 0, 0);
  rect(CarPosX, CarPosY, 100, 50);

  if (EscapeOMeter>5&Speed>20) {
    Escape=true;
    println("Du undslap! Nu kan du køre så hurtigt du vil.");
  }

  if (Speed>10&Escape!=true) {
    CopSway+=random(-1, 1);
    if (CopSway<10) {
      CopSway+=random(2, 0);
    }
    if (CopSway>-10) {
      CopSway+=random(0, -2);
    }

    fill(0, 0, 255);
    rect(CarPosX-150, CarPosY-CopSway, 100, 50);
    println("Politiet er efter dig fordi du brød fartgrænsen... Kør hurtigere for at undslippe.");
  }

  if (Speed>20&Escape!=true) {
    Speed=21;
    fill(0, 200, 0);
    rect(CarPosX-300, CarPosY, 100, 70);
    println("Fordi vi er på et filmsæt i Hollywood, er der nu også en tank. Spørg ikke hvorfor den kører så hurtigt.\nPrøv at skifte mellem vejbaner for at ryste dem af...");
  }
  
  if(Escape&Speed>50){
    println("\n\n\n\nDu kørte for hurtigt og havnede i et biluheld. Jeg sagde at du kunne køre så hurtigt du ville, men det er ikke ensbetydende med at du ikke skulle passe på med det...");
    exit();
  }
}

void mousePressed() {
  if (mouseY>400) {
    CarPosY=500;
    EscapeOMeter++;
  } else if (mouseY>200) {
    CarPosY=275;
    EscapeOMeter++;
  } else if (mouseY>0) {
    CarPosY=75;
    EscapeOMeter++;
  }
  //Kunne man bruge cases til at tjekke om en værdi er større end? Det virker mere optimalt.
}

void keyPressed() {
  if (key=='1') {
    Speed--;
  } else if (key=='2') {
    Speed*=0.9;
  } else if (key=='3') {
    Speed++;
    EscapeOMeter=0;
  }
}
