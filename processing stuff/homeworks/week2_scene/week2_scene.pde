int x;
int y;


void setup(){
  size(500,600);
  noStroke();
  smooth();
  frameRate(15);
}

void draw(){
  background(250,180,208);
  //background(random(255),random(255),random(255));

  fill(96,78,142);
  ellipse(250,400,200,90);
  
  ellipse(170,400,120,120);
  ellipse(330,400,120,120);
  
  {
  //left handle
  pushMatrix();
  translate(200,0);
  rotate(radians(20));
  ellipse(120,450,80,150);
  popMatrix();
  //right handle
  pushMatrix();
  translate(75,85);
  rotate(radians(-20));
  ellipse(120,450,80,150);
  popMatrix();
  }
  
  //white shadows
  fill(255);
  ellipse(170,390,90,90);
  //same with ellipse(330,390,90,90);
  translate(160,0);
  ellipse(170,390,90,90);
  
  //black shadows
  fill(146,200,218);
  ellipse(170,385,90,90);
  translate(-160,0);
  ellipse(170,385,90,90);
  
  fill(96,78,142);
  rect(113,420,20,80);
  translate(254,0);
  rect(113,420,20,80);
  
  //buttons one
  fill(255);
  rect(-93,360,15,50);
  rect(-111,375,50,15);
  
  //button two
  fill(255);
  ellipse(78,385,35,35);
  
  //fill(frameCount * 4 % 360,frameCount * 4 % 360,frameCount * 4 % 360);
  fill(random(255),random(255),random(255));
  
  quad(-200,0,200,0,150,200,-150,200);
  //scale(.5);
  //translate(-200,200);
  //quad(-200,0,200,0,150,200,-150,200);
  
  
  //pushMatrix();
  //translate(165,0);
  //rect(-95,360,15,50);
  //rect(-113,375,50,15); 
  //popMatrix();

  
  
  //why this part doesnt work?
  //pushMatrix();
  //rotate(radians(90));
  //rect(-95,360,15,50);
  //popMatrix();
  
  //buttons one  
  //rect(70,360,15,50);
  
  if (mousePressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX-250,mouseY,35,35); 
  
  

  
}