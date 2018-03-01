Paddle p1;
Paddle p2;
Ball b;

float fWidth = 20;
float pWidth = 40;
float pHeight = 150;
float p1X = 10;
float p1Y;
float p2X;
float p2Y;
float speed = 0;
float bSize = 30;
float bX;
float bY;

void setup(){
  size(1000, 600);
  
  p1Y = (height/2)-(pHeight/2);
  p1 = new Paddle(p1X, p1Y, pWidth, pHeight, speed);
  
  p2Y = (height/2)-(pHeight/2);
  p2X = width-(pWidth+10);
  p2 = new Paddle(p2X, p2Y, pWidth, pHeight, speed);
  
  bX = (width/2);
  bY = (height/2);
  b = new Ball(bSize, bX, bY, speed);
  
  
  background(30, 30, 30);
}

void draw(){
  background(30, 30, 30);
  field();
  strokeWeight(1);
  
  p1.draw();
  p1.move(p1.speed);
  
  p2.draw();
  p2.move(p2.speed);
  
  b.draw();
  
}

void field(){
  stroke(50, 50, 50);
  strokeWeight(10);
  line(width/2, 0, width/2, height);
}

void keyPressed(){
  if(keyCode == UP){
    p2.speed = -10;
  }else if(keyCode == DOWN){
    p2.speed = 10;
  }
  
  if(key == 'w'){
    p1.speed = -10;
  }else if(key == 's'){
    p1.speed = 10;
  }
}

void keyReleased(){
  if(keyCode == UP || keyCode == DOWN){
    p2.speed = 0;
  }
  if(key == 'w' || key == 's'){
    p1.speed = 0;
  }
}