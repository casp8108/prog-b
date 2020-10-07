//OPGAVE I OOP
//---------------------------------------------
//FJERN SÅ MANGE GENTAGELSER I KODEN SOM DU KAN
//VED AT INTRODUCERE NEDARVING FRA EN NY KLASSE
//
//ps: prøv at køre programmet for at se hvad det gør

Firkant f = new Firkant(100,100,20);
Bold    b = new Bold(100,300, 50);


void setup() {
  size(500, 500);
}

void draw() {
  clear();
  textSize(20);
  fill(255);
  text("Tryk på den ting du vil have absolut \nsker intet med,\ntryk igen for at der \nheller ikke sker noget!",100,250);
  f.display();
  b.display();
  
  f.flyt(mouseX,mouseY);
  b.flyt(mouseX,mouseY);  
}

void mousePressed(){
  f.trykker(mouseX,mouseY);
  b.trykker(mouseX,mouseY);
}
