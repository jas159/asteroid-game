class Particle extends GameObject {

  //instance variables
  float x, y;
  int timer;
  float s;
  Particle(float x, float y) {

    location = new PVector (x, y);
    velocity = new PVector(0, 1);
    velocity.setMag(random(0, 2));
    velocity.rotate(random(TWO_PI));
    lives = 1;
    timer = 60;
    //s=1;
    s = random(2, 5);
    a= int(random(100));
  }


  void show() {
    //strokeWeight(255);
    //fill(255);
    //ellipse (location.x, location.y, s, s);
    image(starimg, location.x, location.y, s,s);
  }



  void act() {
    super.act();
    timer--;
    if (timer <= 0) {
      lives = 0;
    }
  }
}
