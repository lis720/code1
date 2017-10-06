float cell = 10;           
float z = map(cell, 0, 10, 0, 100);
color c[]={#f4adba,#fee963,#f5c5a5,#fef9ba,#f09948,#db2442,#bdb3b4};

int change;

void setup(){
    size(900, 900);         
    noLoop(); 
    smooth();
}
 
void draw(){
    background(0);
    strokeWeight(z*0.12);
    strokeCap(ROUND);
    strokeJoin(ROUND);
    for (float x = cell*0.5; x < (width/cell)*z; x = x+z){
        for (float y = z*0.5; y < (height/cell)*z; y = y+z){    
            setColour();
            drawShape(x, y);
        }
    }   
}

void setColour(){
    change = int(random(7));
    stroke(c[change]);
    //fill(c[change]);
}

void drawShape(float xpos, float ypos){
    change = float(random(3));
    if (change == 3) {
        shapeA(xpos, ypos);
    } else if (change == 2) {
        shapeB(xpos, ypos);
    } else if (change == 1) {
        shapeC(xpos, ypos);
    } else if (change == 0) {
        shapeD(xpos, ypos);
    }
}

//four shapes
//shape A doesnt exist
void shapeA(float xpos, float ypos){
    pushMatrix();
    noFill();
    line(xpos, ypos, xpos-20, ypos);
    line(xpos+20, ypos, xpos+20, ypos+20);
    popMatrix();
}

void shapeB(float xpos, float ypos){
    pushMatrix();
    noFill();
    ellipse(xpos, ypos, z*0.30, z*0.30);
    popMatrix();
}

void shapeC(float xpos, float ypos){
    pushMatrix();
    noFill();
    rect(xpos-20, ypos-20, 35, 35);
    popMatrix();
}

void shapeD(float xpos, float ypos){
    pushMatrix();
    noFill();
    line(xpos-20, ypos-20, xpos+20, ypos-20);
    line(xpos-20, ypos+20, xpos+20, ypos+20);
    popMatrix();
}

void mousePressed(){
    redraw();
}