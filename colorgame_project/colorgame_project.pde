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
