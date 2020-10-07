//LAV OPGAVERNE I FANERNE: "Opgave1", "Opgave2", "Opgave3"

void setup() {
  
  String teksten = "Dette er en sjov test";
  
  size(500,500);
  clear();
  textSize(20);
  text("teksten = \"" + teksten + "\"",50,50);
  text("længden af teksten = " + hvorLang(teksten),50,100);
  text("Det tredje ord er = " + detTredjeOrd(teksten),50,150);
  text("Hvert ord omvendt = " + skrivOrdOmvendt(teksten),50,200);
}
