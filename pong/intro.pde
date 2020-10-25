void intro() {
  background(18, 105, 252); 
  intro.play();
  
  
  
  //game title
  fill(255);
  textSize(60);
  textAlign(CENTER, CENTER);
  text("Pong", 400, 230); 
  
  //start button 
  fill(255);
  rectTactile(420, 400, 200, 100); 
  startOnOff(); 
  strokeWeight(5);
  rect(420, 400, 200, 100);
  
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Start", 515, 445); 
  
  //1 player button 
  fill(255);
  rectTactile(120, 310, 190, 80);
  playerOnOff(); 
  strokeWeight(5);
  rect(120, 310, 190, 80); 
  
  fill(0);
  textSize(35);
  text("1 Player", 210, 345); 
  
  //2 player button
  fill(255);
  rectTactile(120, 430, 190, 80); 
  playerTwoOnOff();
  rect(120, 430, 190, 80); 
  
  fill(0);
  text("2 Players", 210, 465); 
  
  
}


void introClicks() {
  //start button
  if (mouseX > 420 && mouseX < 620 && mouseY > 400 && mouseY < 500) {
    stroke(0);
    fill(103, 207, 277);
   startOn = !startOn; 
    mode = GAME;
  } else {
    fill(255);
    stroke(0); 
  }
  
  //2 player 
  if (mouseX > 120 && mouseX < 310 && mouseY > 430 && mouseY < 510) {
    playerTwoOn = !playerTwoOn; 
    AI = false; 
  }
  
  //1 player
  if (mouseX > 120 && mouseX < 310 && mouseY > 310 && mouseY <390) {
   playerOn = !playerOn;
   AI = true; 
  }
  
  
  
}

void playerOnOff() {
  if (playerOn == true) {
    stroke(0, 34, 245); 
    strokeWeight(5);
    fill(103, 207, 277); 
  } else {
    stroke(0);
    strokeWeight(5);
    fill(255);
  
  }
  
}

void playerTwoOnOff() {
  if (playerTwoOn == true) {
    stroke(0, 34, 245); 
    strokeWeight(5);
    fill(103, 207, 277); 
  } else {
    stroke(0);
    strokeWeight(5);
    fill(255);
  }
}
  
void startOnOff() {
  if (startOn == true) {
  } else {
  stroke(0);
  strokeWeight(5);
  fill(255);
  }
  
  
}
  
