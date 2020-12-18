Spaceship ship = new Spaceship (); 
Star[] sky = new Star[200];
ArrayList <Asteroid> metors = new ArrayList <Asteroid>();
ArrayList <Bullet> load = new ArrayList <Bullet>();
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
  if (key == 'r')
  {
    Bullet gun = new Bullet(ship);
    load.add(gun);
  }
}
public void setup() 
{
  size (400, 400);
  background (0);
  for (int i = 0; i<sky.length; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i< 20; i++)
  {
    Asteroid metor = new Asteroid();
    metors.add(metor);
  }
}
public void draw() 
{
  background (0);
  ship.move();
  ship.show();
  //metors.show();
  for (int i = 0; i < metors.size(); i++)
  {
    metors.get(i).move();
    metors.get(i).show();
    float d = dist((float)ship.getX(), (float) ship.getY(), (float)metors.get(i).getX(), (float)metors.get(i).getY());
    if (d<25)
    {
      Asteroid metor = new Asteroid();
      metors.remove(i);
      metors.add(metor);
      metors.add(metor);
    }
  }
  for (int i = 0; i<sky.length; i++)
  {
    sky[i].show();
  }
   for (int i = 0; i < load.size(); i++)
  {
    load.get(i).move();
    load.get(i).show();
  }
  for (int i = 0; i < load.size(); i++)
  {
    for (int j = 0; j < load.size(); j++)
    {
      float f = dist((float)load.get(i).getX(), (float)load.get(i).getY(), (float)metors.get(j).getX(), (float)metors.get(j).getY());
      if (f<50)
      {
        Asteroid metor = new Asteroid();
        metors.remove(j);
        metors.add(metor);
        load.remove(i);
        break;
      }
    }
  }
}
