class Ship extends GameObject {

  //1. Instance variables
  PVector direction;
  int shotTimer;
  int threshold; 

  //2. Constructor(s)
  Ship() {
    lives = 3;
    shotTimer= 0;
    threshold = 30;
    location = new PVector(width/2, height/2);   
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
  }

  //3. Behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate( direction.heading() );
    image(shipimg, 0, 0);
    popMatrix();
  }

  void act() {
    super.act();

    shotTimer++;

    if (upkey)   velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate( -radians(2) );
    if (rightkey) direction.rotate( radians(2) );
    if (spacekey && shotTimer >= threshold) {
      myGameObjects.add(new Bullet());
      shotTimer= 0;
    }
    int j = 0;
    while (j < myGameObjects.size()) {
      GameObject myObj = myGameObjects.get(j);
      if (myObj instanceof Asteroid) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
        lives =0;
        }
      }
      j++;
    }
    if (lives == 0) {
     mode = gameover; 
    }
  }
}
