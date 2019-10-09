int diceone, dicetwo, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve;

void setup() {
  {
  }

  for (int roll = 0; roll < 100; roll++) {
    diceone=(int(random(1, 7)));//dice one roll
    dicetwo=(int(random(1, 7)));//dice two roll
    if (diceone+dicetwo == 2) {//all of the if gates check what numbers the dices rolled. 1 is not included because that's just how rolling 2 dice works.
      two++;
    }
    if (diceone+dicetwo == 3) {
      three++;
    }
    if (diceone+dicetwo == 4) {
      four++;
    }
    if (diceone+dicetwo == 5) {
      five++;
    }
    if (diceone+dicetwo == 6) {
      six++;
    }
    if (diceone+dicetwo == 7) {
      seven++;
    }
    if (diceone+dicetwo == 8) {
      eight++;
    }
    if (diceone+dicetwo == 9) {
      nine++;
    }
    if (diceone+dicetwo == 10) {
      ten++;
    }
    if (diceone+dicetwo == 11) {
      eleven++;
    }
    if (diceone+dicetwo == 12) {
      twelve++;
    }      
    println("Your first dice rolled", diceone, "and your second dice rolled", dicetwo); //prints what the dice rolls were
    println("Two:", two, "Three:", three, "Four:", four, "Five:", five, "Six:", six, "Seven:", seven, "Eight:", eight, "Nine:", nine, "Ten:", ten, "Eleven:", eleven, "Twelve:", twelve); //prints results of rolls
    println("You have rolled", two+three+four+five+six+seven+eight+nine+ten+eleven+twelve, "times"); //prints number of rolls
    if(diceone==2 && dicetwo==2) {println("Meyer!");}//Meyer easter egg
  }
}
