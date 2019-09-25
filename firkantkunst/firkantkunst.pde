int locx = -100, locy= -100;

void setup() { 
  size(500, 500); //vindue bliver 500*500.
  noStroke(); //fjerner outline. dette kan jeg kalde i setup, fordi den ikke behøver at slå det til og fra under programmet. Ellers skulle jeg lave logic gates i draw()
}

void draw() { //Den fylder en række af 5 ud, og går 1 kolonne ned, for så at gøre det igen.
  clear();
  for (int a=0; a<5; a++) { //int a starter på 0, og bliver + med 1 hver gang indtil den når 5. Mens dette sker kører den det der er inde i den.
    locy+=random(95, 105); //+ locy med noget tilfældigt. Dette tilfældige skal være tæt på 100. Den kører jo 5 gange, og der er 500 pixels på skærmen. 5*100=500. Det vil sige at den fylder skærmen.
    locx=-100; //resetter locx
    for (int b=0; b<5; b++) { //int b fungerer ligesom int a. int b ligger inde i int a. Det der sker er så at int b skal køre sine 5 gange før den går videre til a igen.
      locx+=random(95, 105); //det samme som +locy, bare med locx. Denne kører i b loopet.
      fill(255-(locx+locy)/5, 255-(locx+locy)/5, 0); //farver. Den bruger locx og locy, som er lokationen af firkanterne, til så at lave en gradient effekt.
      rect(locx, locy, 100, 100); //laver rect. Den kommer efter fill, fordi fill definerer en farve til det nedenunder i koden. De er 100*100 for at passe med locy, locx, og vinduesstørrelse.
    }
  }
  locy=-100; //resetter locy
}
