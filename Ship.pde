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
    if (leftkey) direction.rotate( -radians(4) );
    if (rightkey) direction.rotate( radians(4) );
    if (spacekey && shotTimer >= threshold) {
      myGameObjects.add(new Bullet());
    
      shotTimer= 0;

    }


    //int q = 0;
    //  while (q < myGameObjects.size()) {
    //    GameObject myObj = myGameObjects.get(q);
    //    if (myObj instanceof UFObullet) {
    //      if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
    //        lives--;
    //        myObj.lives = 0;
    //        points++;
    //      }
    //    }
    //    q++;
    //  }



    int j = 0;
    while (j < myGameObjects.size()) {
      GameObject myObj = myGameObjects.get(j);
      if (myObj instanceof Asteroid) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          lives--;
          velocity.setMag(0);
          location = new PVector (random(width), random(height));
          int i = 0;
          while (i < myGameObjects.size()) {
            GameObject myObj1 = myGameObjects.get(i);
            if (myObj1 instanceof Asteroid) {
              while (dist(myObj1.location.x, myObj1.location.y, location.x, location.y) < 100) {
                location = new PVector (random(width), random(height));
              }
            }
            i++;
          }
        }
      }
      j++;
    }





    if (lives == 0) {
      mode = gameover;
    }
  }
}
