void game () {
  background (0, 0, 255);


  textSize (70);

  fill (0);
  rect (0, 0, 400, 800);

  fill (255);
  rect (400, 0, 400, 800);
  text ("True", 200, 650);

  fill (0);
  text ("False", 600, 650);


  fill (colour[c]);
  textSize (size);
  text (words [rng], width/2, height/2);
  
  size=size+2;

  if (size>200) {
    if (highscore==point) {
      mode=high;
    } else {
      mode=gameover;
    }
  }

  fill (#EA8E32); //orange
  textSize (50);
  text (""+point, 400, 70);
  text ("highscore:"+highscore, 600, 70);
}

void gameR () {

  if (mouseX<400 && rng==c) {
    point=point+1;
    
    rng = int (random (0, 5));
      c= int (random (0, 5));
      
    split= int (random(0, 2));
    
    if (split==0) {
      while (rng==c) {
      rng = int (random (0, 5));
      c= int (random (0, 5));
      }
    } else {
      while (rng!=c) {
     rng = int (random (0, 5));
    c= int (random (0, 5));
      }
    }
    
    size= 50;
    if (point>highscore) {
      highscore=point;
    }
  } else if (mouseX>400 && rng!=c) {
    point=point+1;
    
    rng = int (random (0, 5));
      c= int (random (0, 5));
      
    split= int (random(0, 2));
    
     if (split==0) {
      while (rng==c) {
      rng = int (random (0, 5));
      c= int (random (0, 5));
      }
    } else {
      while (rng!=c) {
     rng = int (random (0, 5));
    c= int (random (0, 5));
      }
    }
   
    size=50;
    if (point>highscore) {
      highscore=point;
    }
  } else {
    if (highscore==point) {
      mode=high;
    } else {
      mode=gameover;
    }
  }
}
