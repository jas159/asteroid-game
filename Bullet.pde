class Bullet extends GameObject {

  int timer; 

  Bullet() {

    location = new PVector (myShip.location.x, myShip.location.y);
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    lives = 1;
    timer = 70;
    size= 10;
  }

  void show() {
    fill(255, 0, 0);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();

    timer--;
    if (timer == 0) {
      lives = 0;
    }
  }
}
