void gameover() {
  theme.pause();
  background(darkblue);
  textSize(30);
  rectButton("(r) play again", width/2, 650, 450, 100);
  rectButton("(esc/l) LEAVE", width/2, 790, 450, 100);
  if (score >= n) {
    fill(255);
    image(good, width/2, height/4, width, height/2);
    text("player WINS", width/2, height/2+50);
  }
  if (lives == 0) {
    fill(255);
    image(bad, width/2, height/4, width, height/2);
    text("you Lose", width/2, height/2+50);
  }
  fill(255, 0, 0);
  if (rkey) {
    gameover.pause();
    theme.rewind();
    theme.play();
    setup();
  }
  if (keyPressed) if (key == 'l' || key == 'L') exit();
}

void gameoverClicks() {
  if (clickedOnRect(width/2, 650, 450, 100)) {
    gameover.pause();
    setup();
  }
  if (clickedOnRect(width/2, 790, 450, 100)) {
    exit();
  }
}
