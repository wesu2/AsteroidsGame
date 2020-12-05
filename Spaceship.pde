class Spaceship extends Floater {   
  public Spaceship() {
    //the number of corners, a triangular floater has 3 
    corners = 4; 
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0]= -8;   
    yCorners[0]= -8;   
    xCorners[1]= 16;   
    yCorners[1]= 0;   
    xCorners[2]= -8;   
    yCorners[2]= 8; 
    xCorners[3]= -2;   
    yCorners[3]= 0; 
    //
    myColor = 255;   
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  //reset 
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setCenterX(double x) {
    myCenterX = x;
  }
  public void setCenterY(double y) {
    myCenterY = y;
  }
  public void setDirection(double d) {
    myPointDirection = d;
  }
  //end reset
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
