class Particle extends GameObject{

  //instance variables
  float x, y, z, vx, vy, size ;
  int a, timer;
boolean alive;
 
  Particle(Float incomingX, float incomingY) {
    x = incomingX;
    y = incomingY;
    vx = random(-5, 5);
    vy = random (-10);
    size = 0.5;
    alive = true;
  }


  void show() {
    fill (0);
    ellipse (x, y, size, size);
  }



  void act() {
    x= x+vx;
    y= y+vy;


    if (x > 600 || x < 0 || y >600 || y<0) {
     alive = false;
    }
   
  }
}
