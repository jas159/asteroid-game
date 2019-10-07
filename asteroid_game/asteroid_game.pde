boolean upkey, downkey, rightkey, leftkey;
PImage shipimg;
Ship myShip;

void setup() {
  size(800, 600);
  shipimg = loadImage("ship.png");
  shipimg.resize(100,100);
  imageMode(CENTER);
  myShip = new Ship();
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();
}

void keyPressed() {
  if (key == UP) upkey = true;
  if (key == DOWN) downkey = true;
  if (key == RIGHT) rightkey = true;
  if (key == LEFT) leftkey = true;
}

void keyReleased() {
  if (key == UP) upkey = false;
  if (key == DOWN) upkey = false;
  if (key == RIGHT) rightkey = false;
  if (key == LEFT) leftkey = false;
} 
