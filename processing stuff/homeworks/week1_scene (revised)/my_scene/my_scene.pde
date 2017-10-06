  
  //peeudocode
  //main() {
  //how to make make a banana smoothie
  //Variables: banana, yogurt,cup,blender
  //Functions: pour(),blend(), chop(), fillcup(), drink()
  
  //chop(banana)
  //pour(milk,banana)
  //blend(banana, yogurt)
  //fillcup()
  //}



  
  //reference: a example from processing.org_arctangent
  //https://processing.org/examples/arctangent.html
  

String myString;
Eye e1;

void setup(){
  
  e1 = new Eye(444, 440, 130); 
  
  
  myString = "Hi little monster";
  println(myString);
 
 
  size(1280,720);
  noStroke();
  smooth();
  } 
  


void draw() {

//eye move with mouse    
  e1.update(mouseX, mouseY);
  e1.display();
}


class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }
 
   void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(0);
    ellipse(size/4, 0, size/2, size/2);
    fill(255);
    ellipse(size/4+20, 0, size/6, size/6);
    popMatrix();
  }  

  {
  background(0);
  noStroke();
  fill(155);
  rect(350,80,300,540);
  //FLASH shadow
   //[wanted to be random color,but failed]

  //doorframe
  noStroke();
  fill(255);
  quad(380,80,700,110,680,670,400,680);
  //doorframe

  //yellow door
  noStroke();
  fill(255,201,43);
  quad(580,140,700,110,680,670,550,620);

   //red door
  noStroke();
  fill(165,47,86);
  quad(720,140,900,110,900,660,750,680);
  noStroke();
  fill(195,47,86);
  quad(750,160,800,150,810,360,765,380);
  noStroke();
  fill(195,47,86);
  quad(820,160,870,150,880,360,835,360);
  noStroke();
  fill(195,47,86);
  quad(760,410,810,390,820,610,775,630);
  noStroke();
  fill(195,47,86);
  quad(830,390,870,390,880,590,835,590);
  
  //green door  
  noStroke();
  fill(59,171,117);
  quad(950,60,1150,50,1100,630,935,620);
  fill(78,200,117);
  quad(970,80,1120,70,1080,600,955,600);
  
  
  
  //blue door
  noStroke();
  fill(50,98,164);
  quad(110,60,250,50,280,630,95,620);
  noStroke();
  fill(15,63,127);
  quad(135,90,220,80,230,230,130,240);
  noStroke();
  fill(15,63,127);
  quad(130,270,230,260,240,410,135,400);
  noStroke();
  fill(15,63,127);
  quad(130,430,230,440,240,610,135,600);
  
    //left horn  
  fill(164,226,53);
  triangle(330,320,330,450,440,450);

  //right horn  
  fill(164,226,53);
  triangle(500,290,540,490,370,470);

  


{
  //left leg
  pushStyle(); 
  noFill();
  stroke(164,226,53);
  strokeWeight(20);
  arc(440,670,180,220,PI,PI+HALF_PI);

  //right leg  
  noFill();
  stroke(164,226,53);
  strokeWeight(20);
  arc(450,650,180,220,PI+HALF_PI,TWO_PI);

  //left leg  
  noFill();
  stroke(164,226,53);
  strokeWeight(20);
  arc(350,570,180,220,PI,PI+HALF_PI);

  //right arm  
  noFill();
  stroke(164,226,53);
  strokeWeight(20);
  arc(550,540,180,220,PI+HALF_PI,TWO_PI);

   popStyle(); 
}

 {
   //feet
   fill(164,226,53);
   rect(310,662,50,20);
   fill(164,226,53);
   rect(530,642,50,20);

 }
    //green head
  fill(164,226,53);
  ellipse(440,464,270,270);
  }
  
  {
  //eyebrow 
  pushStyle(); 
  noFill();
  stroke(27,75,0);
  strokeWeight(5);
  arc(440,465,230,220,PI+PI/3,PI+PI/3*2);
  popStyle(); 
  }
  
  
  {
  //mouth
  fill(0);
  arc(450,520,120,100,0,PI);
  fill(255);
  rect(450,520,15,20);
  fill(164,226,53);
  arc(450,520,120,20,0,PI);
  } 
  
}