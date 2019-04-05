Mball a;

class Mball {
  int r;
  float x;
  float y;
  float speed;
  float yspeed;
  float xDir = -2;
  float yDir= -1;

  Mball( int r1, float x1, float y1, float speed1, float speed2) {
    r=r1;
    x=x1;
    y=y1;
    speed= speed1;
    speed= speed2;
  }


  void display() {
    ellipseMode(RADIUS);
    fill(255, 100, 0);
    ellipse(x, y, r, r);
  }

  void move() {
    x=x+speed* xDir;
    y=y+speed* yDir;
  }


  void bounce() {
    if (x>width-r/2) {
      //speed= -speed;
      xDir= -xDir;
    } else if ( x<0+r/2) {
      //speed= -speed;
      xDir= -xDir;
    }

    if ( y<0+r/2) {
      //yspeed=-yspeed;
      yDir=-yDir;
    }
    //noLoop();
    if (y-r>height) {
      lives=lives-1;
    }
  }
  void contact() {
    //if (mouseX<=x && x<=mouseX+150 && 440<y && y<=480) {
    //  //if (dist(mouseX+75, 480, x+r/2, y+4/2)<40) {
    //  xspeed= -xspeed;
    //  yspeed= -yspeed;
    //}
    if (x>mouseX-75 && x<mouseX+ 75 && y+ r> 480){
      yDir=-abs(yDir);
      xDir= -abs(xDir);
    }
    
    
  }
}
