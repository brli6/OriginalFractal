public void setup()
{
	size(500,500);
}
public void draw()
{
	background(0);
	myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz)
{
	ellipse(x,y,siz,siz);
	if(siz > 10)//base case
	{
		//siz2 is the progress
		fill(((int)(Math.random()*100)+150),((int)(Math.random()*100)+150),((int)(Math.random()*100)+150));
		myFractal(x-siz/2,y+siz/2,siz/2);
		myFractal(x-siz/2,y-siz/2,siz/2);
		myFractal(x+siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y-siz/2,siz/2);
	}
}