import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

int total = 0;
Die suki; 
int diceValue = (int)(Math.random()*6)+1;
public void setup()
{
  size(310, 330); 
  noLoop();
}
public void draw()
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
public void mousePressed() 
{
  total = 0;
  redraw();
}



class Die
{
  int diceX, diceY, diceValue; 
  Die(int x, int y) 
  {         //constructor
    // diceValue = total;
     diceValue = (int)(Math.random()*6)+1;
    diceX = x;
    diceY = y;
    // y = diceX;
    // x = diceY;

  }
  public void roll()
  {
    diceValue = (int)(Math.random()*6)+1;
    total = total + diceValue;
  }
  public void show()
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
  public void diceOne()
  {
    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 7, 7);
  }
  public void diceTwo()
  {

    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
  }
  public void diceThree()
  {

    fill(255);
    rect(diceX, diceY,40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 20, diceY + 20, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
  }
  public void diceFour()
  {

    fill(255);
    rect(diceX, diceY, 40, 40, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 7, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
    ellipse(diceX + 7, diceY + 33, 7, 7);
  }
  public void diceFive()
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
  public void diceSix()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
