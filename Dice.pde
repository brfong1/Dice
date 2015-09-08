Die bob;
void setup()
{
  size(300, 300);
  bob = new Die(10, 10);
  noLoop();
}
void draw()
{
  background(255);  
  bob.show();
}
void mousePressed() 
{
  redraw();
}
class Die //models one single dice cube
{
  int diceX, diceY, ellipseX, ellipseY;
  Die(int x, int y) 
  {
    diceX = x;
    diceY = y;
    //ellipseX = 
    //ellipseY =
  }
  void roll()
  {
    //(int)(Math.random()*5)+1;
  }
  void show()
  {
    fill(0);
    rect(diceX, diceY, diceX + 30, diceY+30);
  }
}
