void game() {
  background(0); 
  intro.play();  

  //center line 
  strokeWeight(5);
  line(400, 0, 400, 600);
  
  //pause button
  fill(255);
  circle(100, 100, 100); 
  stroke(0);
  line(115, 80, 115, 125);
  line(85, 80, 85, 125); 
  
  //scores 
  fill(77, 255, 126);
  textSize(50); 
  text(leftScore, width/4, 100); 
  text(rightScore, 3*width/4, 100);

  //draw paddles
  fill(0, 202, 255); 
  stroke(255); 
  circle(leftx, lefty, leftd);
  fill(20, 177, 219); 
  circle(rightx, righty, rightd);


  //move paddles
  if (wkey == true) {
    lefty = lefty - 5;
  }

  if (skey == true) {
    lefty = lefty + 5;
  } 

  //AI 
  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {

    if (bally > righty) {
      righty = righty + 3;
    }
    if (bally < righty) {
      righty = righty - 3;
    }

    if (bally == righty) {
      righty = righty + 0;
    }
  
}

  //ball
  fill(142, 255, 246); 
  stroke(255);
  strokeWeight(5);
  circle(ballx, bally, balld); 
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  timer = timer - 1; 

  //score 
  if (ballx < 0) {
    score.play();
    score.rewind();
    rightScore = rightScore + 1; 
    ballx = width/2;
    bally = height/2;
    timer = 100; 
    vx = 5;
    vy = 0;
  }

  if (ballx > 800) {
    score.play();
    score.rewind(); 
    leftScore = leftScore + 1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    vx = 5;
    vy = 0;
  }


  //bouncing 
  //if (ballx < balld/2 || ballx > width-balld/2) {
  //vx = vx * -1;
  //}

  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }

  //colliding 
  //left paddle 
  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    left.play();
    left.rewind(); 
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  //right paddle
  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    right.play();
    right.rewind();
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  //gameover 
  if (rightScore == 3) {
    mode = GAMEOVER;
  }

  if (leftScore == 3) {
    mode = GAMEOVER;
  }

  //paddle limits 
  if (lefty <= 100) {
    lefty = 100;
  }

  if (lefty >= 500) {
    lefty = 500;
  }

  if (righty <= 100) {
    righty = 100;
  }

  if (righty >= 500) {
    righty = 500;
  }

  //ball limits 
  if (bally <= 50) {
    bally = 50;
  }

  if (bally >= 550) {
    bally = 550;
  }
  
  
}



void gameClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
    resetCircle();
    fill(0);
    triangle(85, 70, 130, 100, 85, 135);
     
  } 
}
