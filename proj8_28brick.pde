import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage good, bad;

//arays
int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;
int i;

//Font
//PFont washyourhands;
color darkblue = #272D4D;
color purple = #B83564;
color mango = #FF6A5A;
color orange = #FFB350;
color green = #83B8AA;
color white = #FFFFFF;
color black = #000000;
color blue = #8394B7;

//MODE VARIABLES
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//intro GUI
float a;

//game entities
float bx, by, bd, vx, vy, px, py, pd;
boolean mouse=false;

//score
int score=0;
int lives=3;
//keyboard variables
boolean akey, dkey;
boolean wkey, skey, upkey, downkey, leftkey, rightkey, onekey, twokey, pkey, okey, rkey, ekey, mkey, hkey;
boolean isPaused = false;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;


void setup() {
  wkey = skey = upkey = downkey = leftkey = rightkey = onekey = twokey = pkey = okey= rkey = ekey = mkey = hkey = false;
  brickd =17;
  n=150;
  score=0;
  lives=3;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx= 150;
  tempy= 100;

  i=0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx+=70;
    if (tempx>=width-100) {
      tempx=150;
      tempy+=30;
    }
    i++;
  }

  size(1300, 950);
  good = loadImage("socialcreditgood.jpg");
  bad = loadImage("socialcreditbad.gif");
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  noStroke();
  mode = INTRO;

  //set up paddle and ball

  bx = width/2;
  by = height-200;
  bd = 15;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 10;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario_bros_theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw() {
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
  else println("Mode error: " + mode);
}
