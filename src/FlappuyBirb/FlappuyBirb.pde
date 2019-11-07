int upperPipeHeight = (int) random(100, 400);
int rectX = 1600;
int flapX = 400;
int flapY = 400;
int birdVelocity = 1;
int gravity = 1;
void setup(){
  size(1600,900);
}

void draw(){
  background(3, 42, 158);
  fill(3, 158, 42);
  stroke(255, 255, 255);
  ellipse(flapX, flapY,  40, 40);
  flap();
  tpPipes();
}

void flap(){
  birdVelocity -= gravity;
  flapY -= birdVelocity;
  if(mousePressed){
  birdVelocity = 20;
  }
}
void tpPipes(){
  fill(255, 0, 255);
  rect(rectX, -5, 180, upperPipeHeight);
  rectX -= 5;
  if(rectX < -180){
    rectX = 1600;
    upperPipeHeight = (int) random(100, 400);
  }
}
