PImage Circus01;
PImage Circus02;
PImage Circus03;
PImage Circus04;
PImage Circus05;
PImage balloonbg;
PImage balloonbglight;
PImage ballony1;
PImage ballony2;
PImage ballonr1;
PImage ballonr2;
PImage ballonb1;
PImage ballonb2;

//set up a variable sceneNumber; 

//set up a Pimage array 
//PImage [] balloon= new PImage[9];
//opacity [][]


void setup() {
  size(1000, 1000);

  //for(int i = 0; i<ballon.size; i++){
      //balloon[i] = loadImage("Circus0" + i + ".png"); 
  //}
  Circus01 = loadImage("Circus01.png");
  Circus02 = loadImage("Circus02.png");
  Circus03 = loadImage("Circus03.png");
  Circus04 = loadImage("Circus04.png");
  Circus05 = loadImage("Circus05.png");
  balloonbg = loadImage("balloonbg.png");
  balloonbglight = loadImage("balloonbglight.png");
  ballony1 = loadImage("ballony1.png");
  ballony2 = loadImage("ballony2.png");
  ballonr1 = loadImage("ballonr1.png");
  ballonr2 = loadImage("ballonr2.png");
  ballonb1 = loadImage("ballonb1.png");
  ballonb2 = loadImage("ballonb2.png");
}

void draw() {

  //switch(sceneNumber){
    //case 0: 
    //  scene1(); 
    //break; 
    //case 1: 
    //  scene2(); 
    //break; 
  //}
  
  
  //timing events specifically to the scene 
  // if(timeElapsed> 50){
    //sceneNumber = 1; 
  //}
  
  //if(sceneNumber <= final sceneNumber)
  // if (frameCount% 300 == 0){
    //sceneNumber++; 
  //}
  
  //page1
  //float Byte1 = map(mouseX, 0, 1023, 0, 1000);
//
  if (mouseX>0&&mouseX<200) {
    image(Circus01, 0, 0);
    //sceneNumber = 1; 
    //sceneNumber ++; 
  } 
  if (mouseX>200&&mouseX<400) {
    image(Circus02, 0, 0);
  }  
  if (mouseX>400&&mouseX<600) {
    image(Circus03, 0, 0);
  }  
  if (mouseX>600&&mouseX<800) {
    image(Circus04, 0, 0);
  }  
  if (mouseX>800&&mouseX<1000) {
    image(Circus05, 0, 0);
  }


  //page2  
  image(balloonbg, 0, 0);

  for (int i = 0; i <= 21; i += 3) {
    for (int j = 3; j <= 12; j += 3) {
      pushMatrix();
      scale(0.5);
      translate(i * 80, j * 80);
      image(ballony1, -50 + map(mouseY, 0, 1023, -500, 800), -500 + j * 30);
      popMatrix();
    }
  }
  fill(20, 20, 20);
  ellipse(mouseX, mouseY, 20, 20);
}

//void scene1(); 
//put all of code for scene 1 here; 