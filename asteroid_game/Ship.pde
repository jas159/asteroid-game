class Ship {
  
  //1. instance variables
  int lives;
  PVector location;
  PVector velocity;
  PVector direction;
  //2. Constructors
  Ship() {
   lives= 3;
   //x = width/2;
   //y = height/2;
   location = new PVector(width/2,height/2);
   velocity = new PVector (0,0);
   direction = new PVector (0,-0.1);
  }
  
  //3. behaviour functions
  void show () {
    pushMatrix();
    translate(location.x,location.y);
    image(shipimg,0,0);
    popMatrix();
  }
  
  void act() {
    
  }
  
}
