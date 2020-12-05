class Star //note that this class does NOT extend Floater
{
  //your code here
  private double xpos, ypos;
  private int pcolor;
  public Star () {
    xpos = ((int)(Math.random()*400));
    ypos = ((int)(Math.random()*400));
    pcolor = color(255, (int)((Math.random()*55)+200), (int)(Math.random()*125));
  }
  public void show() {
    fill (pcolor);
    ellipse((float)xpos, (float)ypos, 3, 3);
  }
}
