float x = 0;
float y = 0;
float space = 25;

void setup() {
  size(800,800);
  background(0);
}

void draw() {
    strokeCap(ROUND);
  //strokeWeight(y*0.01);
  //noStroke();
  //stroke(random(255));
  stroke(255);
  if(random(-1,1) < 0 ){
    line(x, y , x + space ,y + space );
    fill(255);
  }else{
    fill(255);
    line(x, y + space, x + space , y );


  }
  x = x + space;
  if(x > width){
    x = 0;
    y = y + space;
  }
  println(random(-1,1));

}




  