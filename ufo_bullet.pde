class UFObullet extends GameObject {


  int timer;

  UFObullet() {
    location = new PVector (myUfo.location.x, myUfo.location.y);
    velocity = new PVector(myUfo.direction.x,myUfo.direction.y);
    velocity.setMag(10);
    lives = 1;
    timer = 50;
    size = 10;
  }

  void show() {
    fill(#0EEA34);
    ellipse(myUfo.location.x, myUfo.location.y, size, size);
  }

  void act() {
    super.act();

    timer--;
    if (timer == 0) {
      lives = 0;
    }
  }
}
