boolean x = true;
boolean wink = false;
final float sizeFactor = 80;
float xLoc = 0;
float yLoc = 0;
//float xLocOld = 0;
//float yLocOld = 0;

void setup(){
  noStroke();
  size ( 800, 800 );
}

void draw(){
  translate(width/2, height/2);
  translate(xLoc, yLoc);
  background();
  kirby();
}

void keyPressed(){
 if (key == CODED) {
    if (keyCode == UP) {
      yLoc--;
      //yLocOld = yLoc;
      println(yLoc);
    } 
    else if (keyCode == DOWN) {
      yLoc++;
      //yLocOld = yLoc;
      println(yLoc);
    }
    else if (keyCode == LEFT) {
      xLoc--;
      //xLocOld = xLoc;
      println(xLoc);
    } 
    else if (keyCode == RIGHT) {
      xLoc++;
      //xLocOld = xLoc;
      println(xLoc);
    } 
  }
  else if (key == 't' || key == 'T'){
    if (wink == false){
      wink = true;
    }
    else {
      wink = false;
    }
  }
}

void background(){
  background ( 65, 197, 1 );
}

void kirby(){
  rightLeg();
  leftLeg();
  mainBody();
  arms();
  rightEye();
  leftEye();
  mouth();
}

void rightLeg(){
  noStroke();
  fill (221, 81, 97); //dark red
  rotate(radians(45));
  ellipse (0+(sizeFactor/2), 0+(sizeFactor/10), sizeFactor*0.75, sizeFactor*0.5);//right leg
}

void leftLeg(){
  //fill (221, 221, 97); //pale yellow
  fill (221, 81, 97); //dark red
  rotate(radians(90));
  ellipse (0+(sizeFactor/2), 0-(sizeFactor/10), sizeFactor*0.75, sizeFactor*0.5);//left leg
}

void mainBody(){
  fill(252, 192, 218); //pink
  rotate(radians(-135));
  ellipse ( 0, 0, sizeFactor, sizeFactor); //main body
}

void arms(){
  ellipse ( 0+(sizeFactor/2), 0, sizeFactor/2.5, sizeFactor/2.5);//right arm
  ellipse ( 0-(sizeFactor/2), 0, sizeFactor/2.5, sizeFactor/2.5);//left arm
}

void rightEye(){
  if (wink == false){
  noStroke();
  fill (0); //black
  ellipse ( 0+(sizeFactor/8), 0-(sizeFactor/8), sizeFactor/8, sizeFactor/3);//right eye
  fill (255); // white
  ellipse ( 0+(sizeFactor/8), 0-(sizeFactor/5), sizeFactor/16, sizeFactor/7);
  fill (56, 100, 255); //blue
  ellipse ( 0+(sizeFactor/8), 0-(sizeFactor/80), sizeFactor/16, sizeFactor/13);
  }
  else if (wink == true){
  noFill();
  stroke (0);
  strokeWeight (sizeFactor/30);
  arc ( 0+(sizeFactor/4.5), 0, sizeFactor/3.5, sizeFactor/8, radians(-180), radians(-90) );
  }
}

void leftEye(){
  noStroke();
  fill (0); //black
  ellipse ( 0-(sizeFactor/8), 0-(sizeFactor/8), sizeFactor/8, sizeFactor/3);//right eye
  fill (255); //white
  ellipse ( 0-(sizeFactor/8), 0-(sizeFactor/5), sizeFactor/16, sizeFactor/7);
  fill (56, 100, 255); //blue
  ellipse ( 0-(sizeFactor/8), 0-(sizeFactor/80), sizeFactor/16, sizeFactor/13);
}

void mouth(){
  strokeWeight(sizeFactor/120);
  fill (248, 103, 98); //reddish-pink
  stroke(120, 42, 30);
  arc(0, 0+(sizeFactor/10), sizeFactor/5, sizeFactor/4, radians(0), radians(180));
  line (0+(sizeFactor/10), 0+(sizeFactor/10), 0-(sizeFactor/10), 0+(sizeFactor/10));
}
