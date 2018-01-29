int started = 0;
int sec = 0;
int min = 0;
int millisec = 0;
int start_time = 0;
int delay = 0;


static int detailLvl = 1;

boolean toolActivated;
boolean toolHeld;

Object hairBlower;
Object scissor;
Object grower;

Object comb;


Object selected;

Person person;
float emotion = 0;

PImage face;
PImage play;
PImage playPressed;
PImage sample;
PImage question;
PImage title;


//makeup
boolean lineDraw=false;
int Size=30;
int shapeR=255;
int shapeG=0;
int shapeB=0;
ArrayList circleColors;
ArrayList Circle;
ArrayList<Integer> circleSize;
ArrayList lineDrawing;
ArrayList linePoints;
ArrayList lineColors;




void setup() {
  size(900, 550);

  background(255);
  play = loadImage("play.png");
  playPressed = loadImage("playPressed.png");

  sample = loadImage("sample.png");
  question = loadImage("question.png");
      face = loadImage("face.png");





  Circle=new ArrayList();
  circleColors=new ArrayList();
  circleSize=new ArrayList();
  lineDrawing=new ArrayList();
  linePoints=new ArrayList();
  lineColors=new ArrayList();
  noStroke();


  toolActivated = false;
  toolHeld = false;

  hairBlower = new Object(20, 50-20+50, "blower.png");
  scissor = new Object(20, 320, "scissors.png");
  comb = new Object(30, 200, "comb.png");
  grower = new Object(30, 200, "grower.png");


  person = new Person();
}

void draw() {
  background(255);
  



  person.update();
  hairBlower.update();
  scissor.update();
    grower.update();

  comb.update();

  person.display();
  hairBlower.display();
  scissor.display();
  comb.display();



  textSize(40);
  if (delay == 1) {//delay after a button press before it becomes resposive again
    if (millis() - start_time >= 400) {
      delay = 0;
    }
  }
  if (started == 0) {
    textSize(20);
    image(play, 200+width/2+30, 250+150);
    play.resize(100, 40);
    image(question, 100+width/2+80, 100);
    question.resize(200, 200);
  } else {

    image(playPressed, 200+width/2+30, 250+150);
    playPressed.resize(100, 40);
    image(sample, 100+width/2+80, 100);
    sample.resize(200, 200);

    textSize(20);
  }
  if (started == 1) {//keep track of time values after pressed only works for an hour
    millisec = (millis() - start_time) % 100;
    sec = int((millis() - start_time)/1000) % 10;
  }
  text(millisec, 220+100+width/2-20-5, 200+150);//display the times on the interface
  text(sec, 180+100-10+width/2-20-5, 200+150);

  text(':', 210+100-10+width/2-20-5, 200+150);

  if (mousePressed == true) {//check if mouse was pressed on the start button
    if ((mouseX >= 200+30+width/2 && mouseX <= 300+30+width/2) && (mouseY >= 250+150 && mouseY <= 290+150) && delay == 0) {
      started = -1*started + 1;


      start_time = millis();
      delay = 1;//make sure after button is pressed it cant be pressed for a certain amount of time
    }
  }


  if(mousePressed==true) {
    if(!lineDraw) {

      Circle.add(new PVector(mouseX,mouseY));
      circleColors.add(new PVector(shapeR,shapeG,shapeB));
      int yui=Size;
      circleSize.add((int)yui);
    }

    else if(lineDraw) {
      if(Size<10) {


        lineDrawing.add(new PVector(mouseX,mouseY));
        linePoints.add(new PVector(pmouseX,pmouseY));
        lineColors.add(new PVector(shapeR,shapeG,shapeB));
      }
    }
  }

  for(int i=0;i<Circle.size();i++) {
    PVector newVector=(PVector)Circle.get(i);
    PVector newColor=(PVector)circleColors.get(i);
    fill(newColor.x,newColor.y,newColor.z);
    int arraySize=circleSize.get(i);
    noStroke();
    ellipse(newVector.x,newVector.y,arraySize,arraySize);
  }

  for(int i=0;i<linePoints.size();i++) {
    PVector newLine=(PVector)lineDrawing.get(i);
    PVector newLineP=(PVector)linePoints.get(i);
    PVector newlineColors=(PVector)lineColors.get(i);
    stroke(newlineColors.x,newlineColors.y,newlineColors.z);
    line(newLine.x,newLine.y,newLineP.x,newLineP.y);
  }
  fill(shapeR+30,shapeG+30,shapeB+30,200);
  noStroke();
  ellipse(mouseX,mouseY,Size,Size);
}



void keyPressed() {
  if(key=='d'||key=='D'||keyCode==8) {
    noStroke();
    Circle.clear();
    circleSize.clear();
    linePoints.clear();
    lineDrawing.clear();
    circleColors.clear();
    background(0);
  }
  if(key=='1') {
    shapeR=240;
    shapeG=142;
    shapeB=209;
  }
  if(key=='2') {
    shapeR=248;
    shapeG=73;
    shapeB=135;
  }
  if(key=='3') {
    shapeR=69;
    shapeG=0;
    shapeB=9;
  }
  if(key=='[' && Size>=0) {
    Size-=10;
  }
  if(key==']' && Size<=500) {
    Size+=10;
  }
  if(key=='5') {
    lineDraw=!lineDraw;
  }
}