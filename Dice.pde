// http://www.rapidtables.com/web/color/RGB_Color.htm

int num = 0;
int colors = color(255); //background color of dice

void setup()
{
	noLoop();
	size(400, 430);
}

void draw()
{
	background(0);
	for(int a = 25; a < 400; a+=125)
	{
		for(int b = 25; b < 400; b+=125)
		{
			Die one = new Die(a, b);
			fill(colors);
			one.show();
			fill(0);
			one.roll();
			fill(0);
			rect(0, 390, 400, 40); //cover bottom to prevent overlap
			fill(255);
			textSize(30);
			text("Total: " + num , 30, 415); //show the sum
			float averages = num/9.0;
			text("Average: " + averages , 195, 415); //show the average
		}
	}
}

void mousePressed()
{
	redraw();
	num = 0;
}
class Die //models one single dice cube
{
	int myX, myY, value;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		value = (int) (Math.random()*6)+1;
	}
	void roll()
	{
		if(value == 1)
		{
			colors = color(255, 204, 204); //red
			ellipse(myX+50, myY+50, 15, 15); //center point
			num++; //for total
		}
		if(value == 2)
		{
			colors = color(255, 229, 204); //orange
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			num+=2; //for total
		}
		if(value == 3)
		{
			colors = color(255, 255, 204); //yellow
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+50, myY+50, 15, 15); //middle point
			num+=3; //for total
		}
		if(value == 4)
		{
			colors = color(229, 255, 204); //green
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+25, myY+75, 15, 15); //top rith
			ellipse(myX+75, myY+25, 15, 15); //bottom left
			num+=4; //for total
		}
		if(value == 5)
		{
			colors = color(240, 255, 255); //blue.... HERE!!!
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+25, myY+75, 15, 15); //top rith
			ellipse(myX+75, myY+25, 15, 15); //bottom left
			ellipse(myX+50, myY+50, 15, 15); //center point
			num+=5; //for total
		}
		if(value == 6)
		{
			colors = color(230, 230, 250);
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+25, myY+75, 15, 15); //top rith
			ellipse(myX+75, myY+25, 15, 15); //bottom left
			ellipse(myX+25, myY+50, 15, 15); //middle left point
			ellipse(myX+75, myY+50, 15, 15); //middle right point
			num+=6; //for total
		}
	}
	void show()
	{
		strokeWeight(1);
		rect(myX, myY, 100, 100);
	}
}
