void setup(){
  size(500, 500);
  spaceShip();
}

void spaceShip(){
  translate(250, 250);
  strokeWeight(0);
  
  fill(170, 50,50);
  
  arc(-50, 100, 50, 200, radians(180), radians(270));
  arc(50, 100, 50, 200, radians(270), radians(360));
  
  fill(20,20,200);
  arc(0, 0, 100, 250, radians(180), radians(360));
  rect(-50, 0, 100, 75);
  
  fill(50,50,250);
  arc(0, -50, 70, 125, radians(180), radians(360));
}