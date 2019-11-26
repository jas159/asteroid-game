class UFO extends GameObject {
PVector direction;
  int size;
  int shotTimer;
  int threshold;
  int timer;

  UFO() {
    super();
    lives = 3;
    size = 75;
    shotTimer = 0;
    threshold = 100;
    location = new PVector (random(width), random(height));
    velocity = new PVector(0, 1);
    velocity.setMag(random(0, 3));
    velocity.rotate(random(TWO_PI));
    direction = new PVector(0, -0.1);
  }

  void show() {
    //fill(150);
    //ellipse(location.x, location.y, size, size);
    image(ufoimg, location.x, location.y, size, size);
    fill(0);
    textSize(20);
    text("" +lives, location.x, location.y);
  }

  void act() {
    super.act();

    shotTimer++;
    
    if (shotTimer >= threshold) {
    myGameObjects.add(new UFObullet());
    shotTimer = 0;
    
    }
    int i = 0;
    while (i < myGameObjects.size()) {
      GameObject myObj = myGameObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          lives--;
          myObj.lives = 0;

          if (lives == 0) {
            points++;
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y));
             myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y));
            myGameObjects.add(new Particle(location.x, location.y)); 
            myGameObjects.add(new Particle(location.x, location.y));
          }
        }
      }

      i++;
    }
  }
}
