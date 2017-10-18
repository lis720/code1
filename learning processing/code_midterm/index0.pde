void scene0() {
  {

    background(255, 150, 150);
    if (mousePressed) {
      r=r+20;
    }
    //translate(-150, -150);
    pushMatrix();
    for (int i=0; i<1000; i=i+10) {
      strokeWeight(2);
      fill(200, 56, 0);
      rotate(r);
      triangle(500, 500, i, i, 500, 500);
    }  
    popMatrix();
  }
  pushMatrix();
  image(ribbon, 0, 200);
  popMatrix();
}