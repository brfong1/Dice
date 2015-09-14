int total = 0;
Die suki; 
int diceValue = (int)(Math.random()*6)+1;
void setup()
{
  size(310, 330); 
  noLoop();
}
void draw()
{

  background(255);  
  for(int diceX = 10; diceX <= 290; diceX = diceX + 50)
  {
    for(int diceY = 10; diceY <= 290; diceY = diceY + 50)
    {
        Die suki = new Die(diceX, diceY);//instance
        suki.show();
        suki.roll();
    }
  }
    text("Total: "+ total, 155, 315);
    textAlign(CENTER);
}
void mousePressed() 
{
  total = 0;
  redraw();
}

class Die
{
  int diceX, diceY, diceValue; 
  Die(int x, int y) 
  {         //constructor
    diceValue = (int)(Math.random()*6)+1;
    diceX = x;
    diceY = y;
  }
  void roll()
  {
    diceValue = (int)(Math.random()*6)+1;
    total = total + diceValue;  //counter
  }
  void show()
  {
    //
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
    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 7, 7);
  }
  void diceTwo()
  {

    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
  }
  void diceThree()
  {

    fill(255);
    rect(diceX, diceY,40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 20, diceY + 20, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
  }
  void diceFour()
  {

    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
  void diceFive()
  {

    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 7, 7);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
  void diceSix()
  {

    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 7, diceY + 20, 7,7);
    ellipse(diceX + 33, diceY + 20, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
}
