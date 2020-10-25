void gameover() {
  background(56, 54, 255); 
  textSize(50);
  fill(255);
  text("GAMEOVER", 400, 250);
  
  text("WINNER: ", 350, 330, 50);  
  
  if (rightScore > leftScore) {
   winner = rightScore;
    text("Right", 510, 330);
  } else { 
   winner = leftScore;
   text("Left", 510, 330); 
  }
  
  //return to home screen button
  rectTactile(550, 450, 150, 70);
  stroke(0); 
  strokeWeight(5); 
  rect(550, 450, 150, 70);
  fill(0);
  textSize(40);
  text("Back", 625, 480); 
  
  
  
}

void gameoverClicks() {
  reset(); 
  
  if (mouseX > 550 && mouseX < 700 && mouseY > 450 && mouseY < 520) {
    mode = INTRO;
    intro.rewind(); 
  }
  
  
  
  
}
