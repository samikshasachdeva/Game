Mbar b;
//boolean[] keyArray= new boolean[2];

class Mbar {
  float barX;
  float barY;
  int barS;
  int barL;
  int barB;
  float x;
  float y;
  int xspeed;
  int yspeed;
  int r;
  int score=0;


  Mbar(float barX1, float barY1, int barL1, int barB1) {
    barX= barX1;
    barY= barY1;
    barL= barL1;
    barB=barB1;
  }


  void display() {
    rectMode(CENTER);
    fill(100);
    rect(barX, barY, barL, barB);
  }


  void move() {
    barX= mouseX;

    //if (keyArray[0]) {
    //  barX=barX-4;
    //}
    //if (keyArray[1]) {
    //  barX=barX+ 4;
    //}
  }

  void restrict() {
    if (barX+barL/2>width) {
      barX=barX-barL/8;
    }
    if (barX-barL/2<0) {
      barX=barX+barL/8;
    }
  }
 
}


boolean bounced(Mball ball) {
  //ball.x; barX
  return false;
}



//void keyPressed() {
//  loop();
//  if (keyCode==LEFT) {
//    keyArray[0]=true;
//  }
//  if (keyCode==RIGHT) {
//    keyArray[1]=true;
//  }
//}

//void keyReleased() {
//  if (keyCode==LEFT) {
//    keyArray[0]=false;
//  }
//  if (keyCode==RIGHT) {
//    keyArray[1]=false;
//  }
//}
