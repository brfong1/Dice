Die suki; //dat japanese pun tho
void setup()
{
  size(300, 300); 
  noLoop();
}
void draw()
{
  background(255);  
  for(int diceX; diceX <= 300; diceX = diceX + 50)
  {
    for(int diceY; diceY <= 300; diceY = diceY + 50)
    {
        suki = new Die(diceX, diceY);
        suki.show();
    }
  }
}
void mousePressed() 
{
  redraw();
}

class Die
{
  int diceX, diceY, ellipseX, ellipseY, diceValue; //instance
  Die(int x, int y) 
  {         //constructor
    diceValue = (int)(Math.random()*6)+1;
    diceX = 10;
    diceY = 10;
    y = diceX;
    x = diceY;

  }
  void roll()
  {
    diceValue = (int)(Math.random()*6)+1;
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
    ellipse(diceX + 20, diceY + 20, 7, 7);
  }
  void diceTwo()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 30, diceY + 30, 7, 7);
  }
  void diceThree()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 20, diceY + 20, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
  }
  void diceFour()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
  void diceFive()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 7, 7);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
  void diceSix()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 7, diceY + 20, 7,7);
    ellipse(diceX + 33, diceY + 20, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
}
