import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1;
AudioPlayer pew;
int asteriodcount;
int points, lives;
int highscore;
boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
PImage asteroidimg;
PImage starimg;
PImage galaxyimg;
PImage ufoimg;
UFO ufos;
Ship myShip;
Particle myParticle;
ArrayList<GameObject> myGameObjects;
int mode;
final int intro=1;
final int game =2;
final int gameover=3;

void setup() {
  minim = new Minim(this);
  song1 = minim.loadFile("gamemusic.mp3");
  pew = minim.loadFile("pew.mp3");
  size(800, 600);
  galaxyimg = loadImage("galaxy.jpg");
  galaxyimg.resize(800, 600);
  ufoimg= loadImage("ufo.png");
  ufoimg.resize(75, 75);
  shipimg = loadImage("ship.png");
  shipimg.resize(50, 50);
  asteroidimg = loadImage("asteroid.png");
  asteroidimg.resize(100, 100);
  starimg = loadImage("star.png");
  starimg.resize(5, 5);
  imageMode(CENTER);
  myShip = new Ship();
  ufos = new UFO();
  myGameObjects = new ArrayList<GameObject>();

  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());

  myGameObjects.add(new UFO()); 
  myGameObjects.add(new UFO());

  mode = intro;
}

void draw() {
  background(galaxyimg);

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
