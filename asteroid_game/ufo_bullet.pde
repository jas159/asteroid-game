class UFObullet extends GameObject {


  int timer;

  UFObullet() {
    location = new PVector (ufos.location.x, ufos.location.y);
    velocity = new PVector(ufos.direction.x,ufos.direction.y);
    velocity.setMag(10);
    lives = 1;
    timer = 50;
    size = 10;
  }

  void show() {
    fill(#0EEA34);
    ellipse(ufos.location.x, ufos.location.y, size, size);
  }

  void act() {
    super.act();

    timer--;
    if (timer == 0) {
      lives = 0;
    }
  }
}
