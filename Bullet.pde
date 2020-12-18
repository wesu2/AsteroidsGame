class Bullet extends Floater
{
  public Bullet(Spaceship ship)
  {
    myColor = 255;
    myPointDirection = ship.getDirection();
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    accelerate(6.0);
  }
  public void show()
  {
    fill(myColor);   
    stroke(myColor);    
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
