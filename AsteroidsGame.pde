//your variable declarations here
Spaceship ship = new Spaceship (); 
Star[] sky = new Star[200];
public void keyPressed() {
  if (key == 'a') {
    ship.turn(-10);
  }
  if (key == 'd') {
    ship.turn(10);
  }
  if (key == 'w') {
    ship.accelerate(0.5);
  }
  if (key == 's') {
    ship.setXspeed(0);
    ship.setYspeed(0);
  }
  if (key == 'f') {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setCenterX((int)(Math.random()*400));
    ship.setCenterY((int)(Math.random()*400));
    ship.setDirection((int)(Math.random()*360));
  }
  
}
public void setup() 
{
  size (400, 400);
  background (0);
  for(int i = 0; i<sky.length; i++){
   sky[i] = new Star();
  }
}
public void draw() 
{
  background (0);
  ship.move();
  ship.show();
  for(int i = 0; i<sky.length; i++)
  {
    sky[i].show();
  }
}
