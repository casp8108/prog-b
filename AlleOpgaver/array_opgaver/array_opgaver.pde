//LAV OPGAVERNE I FANERNE: "Opgave1", "Opgave2", "Opgave3"

void setup() {
  int[] mangeTal = {7, 2, 3, 4, 8, 8, 9, 6, 3, 5};
  
  size(500,500);
  clear();
  textSize(20);
  text(arraySomTekst(mangeTal),50,50);
  text("OPGAVE 1 : Anatal 8'ere i listen: " + antal8(mangeTal),50,100);
  text("OPGAVE 2 : Gennemsnittet  er: " +gennemsnit(mangeTal),50,150);
  text("OPGAVE 3 : Summen er: " + sum(mangeTal),50,200);  
}

String arraySomTekst(int[] liste){
  String r = "Listen = {" + liste[0];
  for(int i=1;i<liste.length;i++){
    r = r +"," + liste[i];
  }
  return r + "}";
}
