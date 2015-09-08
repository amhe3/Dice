void setup()
{
	noLoop();
	size(400, 400);
}
void draw()
{
	background(0);
	Die one = new Die(10,10);
	one.show();
}
void mousePressed()
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
		value = (int) (Math.random()*3)+1;
	}
	void roll()
	{
		if(value == 1)
		{
			fill(0);
			ellipse(myX+50, myY+50, 15, 15);
		}
		if(value == 2)
		{
			fill(0);
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
		}
		if(value == 3)
		{
			fill(0);
			ellipse(myX+25, myY+25, 15, 15); //top left point
			ellipse(myX+75, myY+75, 15, 15); //bottom right point
			ellipse(myX+50, myY+50, 15, 15); //middle point
		}
	}
	void show()
	{
		strokeWeight(1);
		fill(255);
		rect(myX, myY, 100, 100);
		roll();
	}
}
