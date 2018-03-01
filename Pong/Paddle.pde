class Paddle{
  float xPos;
  float yPos;
  float wdt;
  float hgt;
  float speed;
  
  
  Paddle(float x, float y, float w, float h, float s){
    xPos = x;
    yPos = y;
    wdt = w;
    hgt = h;
    speed = s;
  }
  
  void draw(){
    fill(230, 230, 230);
    rect(xPos, yPos, wdt, hgt);
  }
  
  void move(float speed){
    if(yPos >= 10 && yPos+hgt <= height-10){
      yPos += speed;
    }else if(yPos <= 10){
      yPos += 1;
    }else if(yPos+hgt >= height-10){
      yPos -= 1;
    }
  }  
  
  
  
  
}