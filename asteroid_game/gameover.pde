void gameover() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("end", 400, 200);
  
    if (points>= highscore) {
    highscore = points;
    fill(#FCFF55);
  }
  textSize(50);
  text("Highscore: "+highscore, 400, 300);
}

void gameoverClicks() {
}
