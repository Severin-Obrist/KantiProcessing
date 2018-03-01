class Ball{
  
  float bSize;
  float bX;
  float bY;
  float speed;
  
  Ball(float bsize, float x, float y, float s){
     bSize = bsize;
     bX = x;
     bY = y;
     speed = s;
  }
  
  void draw(){
    fill(230, 230, 230);
    ellipse(bX, bY, bSize, bSize);
  }
  
}