int score = 0;
boolean gameOver = false;
int gap = 350;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = height - gap - upperPipeHeight;
int lowerPipeTop = height - lowerPipeHeight;
int rectX = 1600;
int flapX = 400;
int flapY = 400;
int birdVelocity = 1;
int gravity = 1;
void setup(){
  size(1600,900);
  lowerPipeHeight = height - gap - upperPipeHeight;
}

void draw(){
  if (gameOver){
    background(200, 0, 0);
    textSize(32);
text("YOU DIED: Score: " + score, 650, 450); 
fill(0, 0, 0);
   
} else {
 background(3, 42, 158);
  fill(3, 158, 42);
  stroke(255, 255, 255);
  ellipse(flapX, flapY,  40, 40);
  tpPipes();
  tpBird();
  flap(); 
  checkDeath();
}
}

void flap(){
  birdVelocity -= gravity;
  flapY -= birdVelocity;
  if(mousePressed){
  birdVelocity = 15;
  }
}
void tpPipes(){
  if(rectX < -180){
    rectX = width;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = height - gap - upperPipeHeight;
    score++;
  }
  fill(255, 0, 255);
  rectX -= 5;
  rect(rectX, -5, 180, upperPipeHeight);
  rect(rectX, height - lowerPipeHeight, 180, lowerPipeHeight);
}

  boolean intersectsPipes() {
     if (flapY < upperPipeHeight && flapX > flapX && flapX < (rectX+180)){
          return true; }
     else if (flapY>lowerPipeTop && flapX > rectX && flapX < (rectX+180)) {
          return true;  
      }
     else { return false; }
  }
  void checkDeath(){
   if(intersectsPipes()){
     gameOver = true;
   } else {
     gameOver = false;
   }
  }
  void tpBird(){
    if(flapY < 0){
    flapY = 900;
    } else if (flapY > 900){
      flapY = 0;
    }
  }
