int points;
boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
//Particle myParticle;
ArrayList<GameObject> myGameObjects;
int mode;
final int intro=1;
final int game =2;
final int gameover=3;

void setup() {
  size(800, 600);
  shipimg = loadImage("ship.png");
  shipimg.resize(50, 50);
  imageMode(CENTER);
  myShip = new Ship();
  myGameObjects = new ArrayList<GameObject>();

  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  

         
  mode = intro;
}

void draw() {
  background(0);

  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  }
}

void mouseReleased() {
  if (mode == intro) {
    introClicks();
  } else if (mode == game) {
    gameClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  }
}


void keyPressed() {
  if (keyCode == UP)    upkey = true; 
  if (keyCode == DOWN)  downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ')       spacekey = true;
}

void keyReleased() {
  if (keyCode == UP)    upkey = false; 
  if (keyCode == DOWN)  downkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ')       spacekey = false;
}
