int score=0;                   //Inital score
int lives=3;                   //Number of lives you start with
boolean gamestart=false;   


void setup() {
  size (500, 500);
  background(255);
  fill(255, 100, 0);
  noStroke();
  ellipseMode(CENTER);
  noStroke();

  a= new Mball ( 20, 200, 50, 3, 3);

  fill(102);
  noStroke();
  b= new Mbar (100, 490, 150, 20);

  c = new Mbric (6, 0, 35, 35, 15, 13);
}

void draw() {
  background(255);

  if (gamestart) {


    a.display();
    a.move();
    a.bounce();

    b.display();
    b.move();
    b.restrict();
    //b.contact();

    c.display();




    fill(0);
    textSize(15);
    text("Score = "+score, 130, 350);              //Print the score on the screen
    text("Lives = "+lives, 130, 390);              //Print remaining lives
  } else {

    textAlign(CENTER);
    textSize(80);
    text("B O U N C E", 250, 100);
    textSize(20);
    text("Press enter to start", 250, 250);
    text("Move mouse horizontally to control the", 250, 140);
    text("Paddle and to bounce the ball", 250, 162);
  }

  if (lives<=0) {
    //background (0);
    //textSize(20);
    //text("Click Enter to Restart", 315, 400);
    //noLoop();

    gamestart=false;
    //textSize(10);
  }

  
}
void keyPressed() { //if enter is pressed then the game starts {
  if (keyCode == ENTER) {
    //background(0);
    //loop();
    gamestart=true;
      } else {
  }
}
