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

public void setup()
{
	noLoop();
	size(400, 400);
}
public void draw()
{
	background(0);
	for(int a = 25; a < 400; a+=125)
	{
		for(int b = 25; b < 400; b+=125)
		{
			Die one = new Die(a, b);
			one.show();
			one.roll();
		}
	}
}

public void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, value;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		value = (int) (Math.random()*6)+1;
	}
	public void roll()
	{
		fill(255);
		int num = 0;
		text("Total: " + num + value, 200, 200);
	}
	public void show()
	{
		strokeWeight(1);
		fill(255);
		rect(myX, myY, 100, 100);
		fill(0);
		if(value == 1)
		{
			ellipse(myX+50, myY+50, 15, 15); //center point
		}
		if(value == 2)
		{
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
		}
		if(value == 3)
		{
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+50, myY+50, 15, 15); //middle point
		}
		if(value == 4)
		{
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+25, myY+75, 15, 15); //top rith
			ellipse(myX+75, myY+25, 15, 15); //bottom left
		}
		if(value == 5)
		{
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+25, myY+75, 15, 15); //top rith
			ellipse(myX+75, myY+25, 15, 15); //bottom left
			ellipse(myX+50, myY+50, 15, 15); //center point
		}
		if(value == 6)
		{
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+25, myY+75, 15, 15); //top rith
			ellipse(myX+75, myY+25, 15, 15); //bottom left
			ellipse(myX+25, myY+50, 15, 15); //middle left point
			ellipse(myX+75, myY+50, 15, 15); //middle right point
		}
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
