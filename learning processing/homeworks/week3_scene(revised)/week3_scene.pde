//my own function
//int sleepTime(){
//int sleepHours_value, assignment_value;
//sleep_value=7;
//actual_sleepHours_value=sleepHours_value-assignment_value
//return actual_sleepHours_value
//}


//man
float x = 100;
float y = 100;
//eye
float a = 100;
float b = -200;
float speed = 0.1;
int i=100;
int e=100;

void setup() {
  size(1600,800);
}

void draw() {
  background(0);
  smooth();


   
  //white cubes 
  for(int i=100; i<=width-100;i+=100){
    for(int e=100;e<=height-100;e+=100){
      fill(0,0,255);
      rect(i-10,e-10,20,20);
    }
    
    
    
   fill(255,255,000);
   noStroke();
   
   
    
  if (mousePressed == true) { 
    ellipse(x,y,100,100);
  } else { 
    arc(x, y, 100, 100, PI/7.0, PI+PI/1.2);
  }
  
    if (mousePressed == true) { 
    ellipse(x+100,y+100,100,100);
  } else { 
    arc(x+100,y+100,100, 100, PI/7.0, PI+PI/1.2);
  }
  
  
    if (mousePressed == true) { 
    ellipse(x+200,y+200,100,100);
  } else { 
    arc(x+200,y+200,100, 100, PI/7.0, PI+PI/1.2);
  }
  
  if (mousePressed == true) { 
    ellipse(x+300,y+300,100,100);
  } else { 
    arc(x+300,y+300,100, 100, PI/7.0, PI+PI/1.2);
  }
  
    if (mousePressed == true) { 
    ellipse(x+400,y+400,100,100);
  } else { 
    arc(x+400,y+400,100, 100, PI/7.0, PI+PI/1.2);
  }
  
    if (mousePressed == true) { 
    ellipse(x+500,y+500,100,100);
  } else { 
    arc(x+500,y+500,100, 100, PI/7.0, PI+PI/1.2);
  }
    
    if (mousePressed == true) { 
    ellipse(x+600,y+600,100,100);
  } else { 
    arc(x+600,y+600,100, 100, PI/7.0, PI+PI/1.2);
  }
  
  

  
  //eyes
  fill(0);
  ellipse(a,80,10,10);
  ellipse(a+100,180,10,10);
  ellipse(a+200,280,10,10);
  ellipse(a+300,380,10,10);
  ellipse(a+400,480,10,10);
  ellipse(a+500,580,10,10);
  ellipse(a+600,680,10,10);
  
  

  
  //run

 x = x + 0;
  if (keyPressed == true) {
    x = x + speed;
    }
  if (x > 800) {
    x = -800;
    }
 a = a + 0;
  if (keyPressed == true) {
    a = a + speed;
    }
  if (a > 800) {
    a = -800;
    }
 b = b + 0;
  if (keyPressed == true) {
    b = b + speed;
    }
  if (b > 600) {
  b = -1000;
  }
  
  //black rect
  fill(0);
  rect(b,80,249,30);
  rect(b+100,180,249,30);
  rect(b+200,280,249,30);
  rect(b+300,380,249,30);
  rect(b+400,480,249,30);
  rect(b+500,580,249,30);
  rect(b+600,680,249,30);

}
}