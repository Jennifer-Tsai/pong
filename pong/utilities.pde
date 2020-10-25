void rectTactile(int x, int y, int w , int h) {
   if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
   fill(103, 207, 277);
  } else {
  fill(255);
  }
}

void reset() {
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
}



void resetCircle() {
  //for pause button 
  fill(255);
  circle(100, 100, 100);
  
}
