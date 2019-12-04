void intro() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("asteroid game", 400, 200);
  song1.play();
}

void introClicks() {
  mode = game;
}
