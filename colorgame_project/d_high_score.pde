void high () {

  
  background (#EA8E32);
  fill (255);
  textSize (100);
  text ("HIGH SCORE!!!", 400, 400);
  fill (255);
  textSize (70);
   text ("Score:"+point, 400, 700);
  

if (mouseX>300 && mouseX <500 && mouseY >500 && mouseY <560) {
    fill (100);
  } else {
    fill (0);
  }
  rect (300, 500, 200, 60);

textSize (40);
fill (255);
 text ("RESTART", 400, 550);
 
}

void highR () {

 if (mouseX>300 && mouseX <500 && mouseY >500 && mouseY <560){
  mode=intro;
  }
}
