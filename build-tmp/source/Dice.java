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

Die suki; //dat japanese pun tho
public void setup()
{
  size(300, 300); 
  noLoop();
}
public void draw()
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
public void mousePressed() 
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

  }
  public void roll()
  {
    diceValue = (int)(Math.random()*6)+1;
  }
  public void show()
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
  public void diceOne()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 20, diceY + 20, 7, 7);
  }
  public void diceTwo()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 30, diceY + 30, 7, 7);
  }
  public void diceThree()
  {
    background(255);
    fill(255);
    rect(diceX, diceY, diceX + 30, diceY + 30, 5);
    fill(0);
    ellipse(diceX + 7, diceY + 7, 7, 7);
    ellipse(diceX + 20, diceY + 20, 7, 7);
    ellipse(diceX + 33, diceY + 33, 7, 7);
  }
  public void diceFour()
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
  public void diceFive()
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
  public void diceSix()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
