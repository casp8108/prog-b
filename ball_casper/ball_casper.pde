float ballx, bally, ballspeedx = 1, ballspeedy = 1; //ball variables 
float boxx, boxy, boxsize = 500; //box variables

void setup() {
  size(500, 500);
}

void draw() {
  clear();

  if (ballx>boxsize+boxx) { //collision with box
    ballspeedx=ballspeedx*-1;
  }
  if (ballx<boxx) {
    ballspeedx=ballspeedx*-1;
  }

  if (bally>boxsize+boxy) {
    ballspeedy=ballspeedy*-1;
  }
  if (bally<boxy) {
    ballspeedy=ballspeedy*-1;
  }

  boxsize-=0.2; //shrinking box
  boxx+=0.1; //box moves to stay centered
  boxy+=0.1;

  ballx+=ballspeedx; //ball movement
  bally+=ballspeedy;

  rect(boxx, boxy, boxsize, boxsize); //visual objects
  ellipse(ballx, bally, 10, 10);
}
