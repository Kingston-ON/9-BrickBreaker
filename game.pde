void game() {
  //music
  theme.play();
  
  background(darkblue);
  noStroke();
  // paddle
  fill(white);
  circle(px, py, pd);
  if (mouse) px=mouseX;
  else {
    if (akey || leftkey) px -= 10;
    if (dkey || rightkey) px += 10;
  }

  //ball
  fill(white);
  circle(bx, by, bd);
  bx += vx;  //movement
  by += vy;

  //bouncing
  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = 2*(bx - px)/10;
    vy = 2*(by - py)/10;
  }
  //return
  if (bx < bd/2 || bx > width-bd/2) vx = -vx; //walls
  if (vy==0) {
    vy=random(3, 5);
  } else if (by < bd/2 ) {
    vy = -vy;
  }
  if (by > height-bd/2) {
    lives--;
    vx=0;
    vy = 3;
    bx = width/2;
    by = height-200;
    bd = 15;
  }

  //bricks
  /*
  circle(x[0],y[0],brickd);
  circle(x[1],y[1],brickd);
  circle(x[2],y[2],brickd);
  */
  i = 0;
  //alive[i]=true;
  while (i < n) {
    if (alive[i]) {
      manageBricks(i);
    }
    i++;
  }
    
  stroke(black);
  fill(green);
  text("Social Credit: " + lives, width/2, 3*height/4);  
  text("Score: " + score, width/2, 3*height/4+50);
  if (pkey)mode=PAUSE;
  if (score>=n || lives == 0){
    gameover.rewind();
    gameover.play();
    mode=GAMEOVER;
  }
 //brickd = 15;
}

void gameClicks() {
  mode=PAUSE;
}

void manageBricks(int i) {
  if (y[i] == 100 || y[i] == 500) fill(purple);
  if (y[i] == 160 || y[i] == 450) fill(mango);
  if (y[i] == 220 || y[i] == 400) fill(orange);
  if (y[i] == 280 || y[i] == 350) fill(green);
  if (y[i] == 340 || y[i] == 350) fill(blue);
  if(y[i] == 300) fill(white);
  //square(x[i], y[i], brickd);
  rect(x[i], y[i], 2*brickd,3*brickd/4);
  //paddle bounce
  if (dist(bx, by, x[i], y[i]) <= bd/2 + brickd/2) {
    vx = 4*(bx - x[i])/10;
    vy = 4*(by - y[i])/10;
    alive[i] = false;
    score++;
    coin.rewind();
    coin.play();
  }
}
