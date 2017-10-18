//reference:processing.org/examples
//openprocessing.com

int r;

//Variable to track each instance of the Class and pass Class Functions
int index0 = 0;
int index1 = 0;
int index2 = 0;
int index3 = 0;
int index4 = 0;
int index5 = 0;
int index6 = 0;

//Button Variables
boolean buttonB1 = true;
boolean buttonB2 = false;
boolean buttonB3 = false;
boolean buttonB4 = false;
boolean buttonB5 = false;
boolean buttonS = false;
//boolean buttonB6 = false;

//Scene Variables
boolean scene1 = false;
boolean scene2 = false;
boolean scene3 = false;
boolean scene4 = false;
boolean scene5 = false;
//boolean scene6 = false;

boolean mousepressed = false;


float buttonTopColor;
float buttonDownColor;
float buttonBase = 207;

float topY=70;
float buttonTopLocationX = 288;

//Button1 Symbol
float button1symbolYpos;

//Button2 Symbol
float button2symbol1Ypos;
float button2symbol2Ypos;
float button2symbol3Ypos;

//Button3 Symbol
float button3symbolYpos;

//Button4 Symbol
float button4symbolY1pos;
float button4symbolY2pos;
float button4symbolY3pos;
float button4symbolY4pos;
float button4symbolY5pos;
float button4symbolY6pos;

//Button5 Symbol
float button5symbol1Ypos;
float button5symbol2Ypos;

//Button6 Symbol
float button6symbolYpos;

//for ballon shooting
int size = 50; 
int[][] opacity = new int[size][size]; 
int[][] speed =new int [size][size];
boolean[][]fall =new boolean[size][size];

//for cards
float theta;
float s;
float spinamt;
float reduction;
int count;


//for popcorn
float[] y = new float[3000];


//for eyes
float phase = 0.0;
float phaseInc = 1.0 / 120.0;
float trackX = 0;
float trackY = 0;
ArrayList eyes;

//for hunted house thunder
int startX = 145;
int startY = 110;
int endX = (int)(Math.random()*500);
int endY = (int)(Math.random()*300);

//inport pics
PImage Circus01;
PImage Circus02;
PImage Circus03;
PImage Circus04;
PImage Circus05;
PImage balloonbg;
PImage balloonbglight;
PImage ballony1;
PImage target;
PImage window;
PImage chip;
PImage popcorn;
PImage movie;
PImage movieobjects;
PImage cup;
PImage ribbon;






//Setup
void setup() {
  size (1000, 1000); 
  //for eyes
  eyes = new ArrayList();
  for (int i = 0; i < 4000; i++) {
    float r1 = random(10, 50);
    float r2 = r1 * random(0.3, 0.6);
    float x = random(r1, width - r1);
    float y = random(r1, height - r1);

    if (i == 0) {
      eyes.add(new Eye(x, y, r1, r2));
    } else {
      boolean fits = true;
      int s = eyes.size();      
      for (int j = 0; j < s; j++) {
        Eye e = (Eye) eyes.get(j);
        float d = dist(x, y, e.x, e.y);

        if (d < r1 + e.r1) {
          fits = false;
          break;
        }
      }
      if (fits) {
        eyes.add(new Eye(x, y, r1, r2));
      }
    }
  }

  //for cards 
  reduction = 0.9;


  //for (int i =0; i<size; i++) {
  //  for (int j = 0; j<size; j++) {
  //    opacity[i][j] = 255;
  //    speed[i][j]= 1;
  //  }
  //}

  Circus01 = loadImage("Circus01.png");
  Circus02 = loadImage("Circus02.png");
  Circus03 = loadImage("Circus03.png");
  Circus04 = loadImage("Circus04.png");
  Circus05 = loadImage("Circus05.png");
  balloonbg = loadImage("balloonbg.png");
  balloonbglight = loadImage("balloonbglight.png");
  ballony1 = loadImage("ballony1.png");
  target = loadImage("target.png");
  window = loadImage("window.png");
  chip = loadImage("chip.png");
  popcorn = loadImage("popcorn.png");
  movie = loadImage("movie.png");
  movieobjects = loadImage("movieobjects.png");
  cup = loadImage("cup.png");
  ribbon = loadImage("ribbon.png");
}






void draw() {
  if (scene1 = ! scene1 ) {
    scene1();
  } 
  if (scene2 = ! scene2 ) {
    scene2();
  }
  if (scene3 = ! scene3 ) {
    scene3();
  }
  if (scene4 = ! scene4 ) {
    scene4();
  }
  if (scene5 = ! scene5 ) {
    scene4();
  }

  drawScene();
  button1();
  button2();
  button3();
  button4();
  button5();

  println("scene1"+scene1);
  println("scene2"+scene2);
  println("scene2"+scene3);
  println("scene4"+scene4);
  println("scene2"+scene5);
}

//RADIO BUTTONS Event Listeners for all the button location/states - One on means all else off
void mousePressed() {
  if (mouseX<318 && mouseX>258 && mouseY<106-20 && mouseY>40-20) {
    scene1 = ! scene1;
    scene2 = false;
    scene3 = false;
    scene4 = false;
    scene5 = false;
    buttonB1 = !buttonB1;
    buttonB2 = false;
    buttonB3 = false;
    buttonB4 = false;
    buttonB5 = false;
    //buttonB6 = false;
  } else if (mouseX<408 && mouseX>348 && mouseY<106-20 && mouseY>40-20) {
    scene2 = ! scene2;
    scene1 = false;
    scene3 = false;
    scene4 = false;
    scene5 = false;
    buttonB2 = !buttonB2;
    buttonB1 = false;
    buttonB3 = false;
    buttonB4 = false;
    buttonB5 = false;
    //buttonB6 = false;
  } else if (mouseX<498 && mouseX>438 && mouseY<106-20 && mouseY>40-20) {
    scene3 = ! scene3;
    scene1 = false;
    scene2 = false;
    scene4 = false;
    scene5 = false;
    buttonB3 = !buttonB3;
    buttonB1 = false;
    buttonB2 = false;
    buttonB4 = false;
    buttonB5 = false;


    //buttonB6 = false;
  } else if (mouseX<588 && mouseX>528 && mouseY<106-20 && mouseY>40-20) {
    scene4 = ! scene4;
    scene1 = false;
    scene2 = false;
    scene3 = false;
    scene5 = false;
    buttonB4 = !buttonB4;
    buttonB1 = false;
    buttonB2 = false;
    buttonB3 = false;
    buttonB5 = false;
    //buttonB6 = false;
  } else if (mouseX<678 && mouseX>618 && mouseY<106-20 && mouseY>40-20) {
    scene5 = ! scene5;
    scene1 = false;
    scene2 = false;
    scene3 = false;
    scene4 = false;

    buttonB5 = !buttonB5;
    buttonB1 = false;
    buttonB2 = false;
    buttonB3 = false;
    buttonB4 = false;
    //buttonB6 = false;
  } else if (mouseX<768 && mouseX>708 && mouseY<106-20 && mouseY>40-20) {
    //buttonB6 = !buttonB6;
    buttonB1 = false;
    buttonB2 = false;
    buttonB3 = false;
    buttonB4 = false;
    buttonB5 = false;
  }
}

void drawScene() {
  if (scene1 = ! scene1 ) {
    scene1();
  } else if (scene2 = ! scene2 ) {
    scene2();
  } else if (scene3 = ! scene3 ) {
    scene3();
  } else if (scene4 = ! scene4 ) {
    scene4();
  } else if (scene5 = ! scene5 ) {
    scene5();
  }else { scene0();}
}