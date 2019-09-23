void intro () {

  background (0, 255, 0);
  textSize (90);
  fill (0);
  text ("COLOUR SWITCH", width/2, height/2);
  
  point=0;
  size=50;



  if (mouseX>300 && mouseX <500 && mouseY >600 && mouseY <660) {
    fill (100);
  } else {
    fill (0);
  }
  rect (300, 600, 200, 60);

  fill (255);
  textSize (50);
  text ("START", 400, 650);
}


void introR () {

  if (mouseX>300 && mouseX <500 && mouseY >600 && mouseY <660){
  mode=game;
  }
}
