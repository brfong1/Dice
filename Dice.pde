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
  int diceX, diceY, ellipseX, ellipseY, diceValue;
  Die(int x, int y) 
  {
    diceValue = (int)(Math.random()*5)+1;
    diceX = x;
    diceY = y;
    //ellipseX = 
    //ellipseY =
  }
  void roll()
  {
    diceValue = (int)(Math.random()*5)+1;
  }
  void show()
  {
    if (diceValue == 1)
    {
      diceOne();
    }
    if (diceValue == 2)
    {
      diceTwo();
    }
    if (diceValue == 3)
    {
      diceThree();
    }
    if (diceValue == 4)
    {
      diceFour();
    }
    if (diceValue == 5)
    {
      diceFive();
    }
    if (diceValue == 6)
    {
      diceSix();
    }
  }
  void diceOne()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 10, 10);
  }
  void diceTwo()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 10, diceY + 10, 10, 10);
    ellipse(diceX + 30, diceY + 30, 10, 10);
  }
  void diceThree()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 10, 10);
    // ellipse 2,3
  }
  void diceFour()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 10, 10);
    //ellipse 2,3,4
  }
  void diceFive()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 10, 10);
    //ellipse 2,3,4,5
  }
  void diceSix()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 10, 10);
    //ellipse 2,3,4,5,6
  }
}
