
//Button2 Function - Turns on draw tool and moves button position
void button2() {
  if (buttonB2) {


    button1();

    //Button down element positions
    topY = 74;
    buttonTopColor = 234;
    button2symbol1Ypos = 80;
    button2symbol2Ypos = 68;
    button2symbol3Ypos = 80;
  } else {

    //Button up element positions
    topY = 70;
    buttonTopColor = 255;
    button2symbol1Ypos = 76;
    button2symbol2Ypos = 64;
    button2symbol3Ypos = 76;
  }

  //Button1 Base
  fill(buttonBase);
  noStroke();
  ellipse(378, 76-20, 60, 60);

  //Button1 Top
  fill(buttonTopColor);
  noStroke();
  ellipseMode(CENTER);
  ellipse(378, topY-20, 60, 60);
}

//Scene2 Function - ballon shooting 
void scene2() {
//  for (int i = size-1; i>= 0; i-=3) {
//    for (int j= size-1; j>=0; j-=3) {
      
//      tint(0, 0, 0, opacity[i][j]);
//      image(ballony1, i*size, j); 

//      if (mousePressed) {
//        if (mouseX>=(i*size) && mouseX<((i+1)*size) &&
//          mouseY>=(j*size) && mouseY<((j+1)*size)) {
//          //opacity[i][j]= 0;
//          //speed[i][j] ++;
//          fall[i][j]=true;
//        }
//      }
      
//      if (fall[i][j]){
//        speed[i][j] +=3;
//      }

//      if (frameCount % 120 == 0) {
//        opacity[i][j] = 255;
//      }
//    }
//}
  
  
  image(balloonbg, 0, 0);
  for (int i = 0; i <= 21; i += 3) {
    for (int j = 3; j <= 12; j += 3) {
      pushMatrix();
      scale(0.5);
      translate(i * 80, j * 80);
      image(ballony1, -50 + map(mouseX, 0, 1023, -500, 800), -500 + j * 30);
      popMatrix();
    }
  }
  image(target, mouseX-55, mouseY-55);


}