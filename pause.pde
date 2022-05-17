void pause() {
  if (pkey) text("PAUSED", width/2, height/2);
  
  if (!isPaused) mode = GAME;
}


void pauseClicks() {
  mode=GAME;
}
