int title=100;
int a1=3;
void intro() {
  theme.play();
  background(200);

  background(200);
  shadowText("BRICK BREAKER", width/2, height/4,title);
  textSize(40);
  fill(0);
  textSize(50);
  noStroke();
  rectButton("(w)PlayKeyboard", width/2, 590, 450, 100);
  rectButton("(m) PLAY MOUSE", width/2, 790, 450, 100);

  title=title+a1;
  if (title>=150) a1=-1*a1;
  if (title<=30) a1=-1*a1;

  if (wkey == true) mode=GAME;
  if (mkey == true) {
    mouse=true;
    mode = GAME;
  }
}

void introClicks() {
  if (clickedOnRect(width/2, 590, 450, 100)) {
    mode=GAME;
  }
  if (clickedOnRect(width/2, 790, 450, 100)) {
    mouse=true;
    mode=GAME;
  }
}
