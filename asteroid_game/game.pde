void game() {

  myShip.show();
  myShip.act();

  fill(255, 0, 0);
  textSize(25);
  text(""+points, 50, 25);
  text("lives:" +myShip.lives, 50, 525);


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
}



void gameClicks() {
}
