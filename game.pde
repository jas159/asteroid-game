int points;
void game() {
  myShip.show();
  myShip.act();



  int i = 0;
  while (i < myGameObjects.size()) {
    GameObject myObj = myGameObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      myGameObjects.remove(i);
    } else {
      i++;
    }
  }


    fill(255, 0, 0);
    textSize(50);
    text(""+points, 50, 50);
  }



  void gameClicks() {
    
  }
