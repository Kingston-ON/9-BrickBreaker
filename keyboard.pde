void keyPressed() {
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'o' || key == 'O') okey = true;
  if (key == 'r' || key == 'R') rkey = true;
  if (key == 'e' || key == 'E') ekey = true;
  if (key == 'm' || key == 'M') mkey = true;
  if (key == 'h' || key == 'H') hkey = true;
  if (key == 'p' || key == 'P') {
    pkey=true;
    isPaused = !isPaused;
  }
  if (key == '1') onekey = true;
  if (key == '2') twokey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'p' || key == 'P') pkey = false;
  if (key == 'o' || key == 'O') okey = false;
  if (key == 'r' || key == 'R') rkey = false;
  if (key == 'e' || key == 'E') ekey = false;
  if (key == 'm' || key == 'M') mkey = false;
  if (key == 'h' || key == 'H') hkey = false;
  if (key == '1') onekey = false;
  if (key == '2') twokey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
    if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
