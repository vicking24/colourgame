// victoria 
// sept 9

color purple= #D049E3;
color red=#E81010;
color green= #10E819;
color yellow=#C2D12C;
color blue=#2094D1;
int point;
int highscore;
int rng;
int c;
int split= int (random(0, 1));
int size=50;

ArrayList <PImage> gif;
int n=0;
int i=0;
String zero;


final int intro=0;
final int game=1;
final int gameover=2;
final int high=3;

int mode =intro;

color [] colour= {purple, red, green, yellow, blue};
String [] words= {"PURPLE", "RED", "GREEN", "YELLOW", "BLUE" };



void setup () {
  size (800, 800);
  textAlign (CENTER);
  point=0;
  highscore=0;
  
  gif= new ArrayList <PImage> (120); // constructing a list, number is the amount of frame of the gif

  while (i<=119) {
    if (i<10) {
      zero= "00";
    } 
    else if (i>9 &&i<100) {
      zero= "0";
    }else {
      zero="";
    }
    PImage temp=loadImage ("frame_" +zero +i+ "_delay-0.03s.gif");
    temp.resize (800, 800);
    gif.add (temp);
    i=i+1;
  }
 
}



void draw() {
  if (mode==intro) {
    intro ();
  } else if (mode==game) {
    game();
  } else if (mode==gameover) {
    gameover();
  } else if (mode==high) {
    high();
  } else {
    println ("mode error");
  }
}

void mouseReleased () {

  if (mode==intro) {
    introR ();
  } else if (mode==game) {
    gameR();
  } else if (mode==gameover) {
    gameoverR();
  } else if (mode==high) {
    highR();
  } else {
    println ("mode error");
  }
}
