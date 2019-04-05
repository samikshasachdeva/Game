Mbric c;

class Mbric {
  float bX;
  int bY;
  int bL;
  int bB;
  int bD;
  int bN;

  Mbric (float x2, int y2, int l2, int b2, int d2, int n2) {
    bX=x2;
    bY=y2;
    bL=l2;
    bB=b2;
    bD=d2;
    bN=n2;
  }

  void display() {
    fill(100);
    rectMode(CORNER);
    for (int i=0; i<bN; i++) {
      for (int j=0; j< height-300; j=j+45) {
        //fill(random)
        //FOR LOOP
        rect(bX+(i*(bD+bL)), bY+j, bL, bB);
      }
    }

    fill(0); 
    rect(55+((bD+bL)), bY, bL, bB);
    rect(355+((bD+bL)), bY+45, bL, bB);
    rect(105+((bD+bL)), bY+90, bL, bB);
    rect(55+((bD+bL)), bY+135, bL, bB);
    rect(205+((bD+bL)), bY+135, bL, bB);
    rect(5+((bD+bL)), bY+180, bL, bB);
    rect(405+((bD+bL)), bY+180, bL, bB);
  }
}
