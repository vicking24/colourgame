void gameover () {
background (255, 0, 0);
textSize (70);
fill (0);
text ("GAMEOVER", 400, 400);

textSize (50);
text ("SCORE:"+point, 400, 700);

text ("highscore:"+highscore, 600, 70);



 if (mouseX>300 && mouseX <500 && mouseY >550 && mouseY <610) {
    fill (100);
  } else {
    fill (0);
  }
  rect (300, 550, 200, 60);

textSize (40);
fill (255);
text ("RESTART", 400, 600);
}

void gameoverR () {


  if (mouseX>300 && mouseX <500 && mouseY >550 && mouseY <610){
  mode=intro;
  }
  
}
