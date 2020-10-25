//Jennifer Tsai
//Pong  
//1-2A
//Oct 16, 2020 

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int UTILITIES = 5;
final int KEYBOARD = 6; 

//entity variables
float leftx, lefty, leftd; //paddles
float rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball 
float vx, vy; //ball velocity 

//keyboard variables 
boolean wkey;
boolean skey;
boolean upkey;
boolean downkey; 

//score 
int leftScore;
int rightScore; 
int timer;

//declare winner 
int winner; 

//music
Minim minim;
AudioPlayer intro, right, left, wall, score;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//AI
boolean AI;

//player on and off 
boolean playerOn; 
boolean playerTwoOn;

boolean startOn;




void setup() {
  size(800, 600);
  mode = INTRO;
  
  
  //paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100; 
  
  //movements 
  vx = random(-5, 5);
  vy = random(-5, 5); 
  
  //keyboard 
  wkey = false;
  skey = false;
  upkey = false;
  downkey = false; 
  
  //score 
  leftScore = rightScore = 0; 
  
  timer = 100; 
  
  //winner = rightScore;
  
  //minim 
  minim = new Minim(this);
  intro = minim.loadFile("intro.wav");
  left = minim.loadFile("leftpaddle.wav");
  right = minim.loadFile("rightpaddle.wav");
  wall = minim.loadFile("wall.wav");
  score = minim.loadFile("score.wav");
  
  playerOn = false;
  playerTwoOn = false;
  
  startOn = false; 
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error : " + mode);
  }
    
  
  
}
