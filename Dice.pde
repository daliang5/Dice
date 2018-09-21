void setup()
{
	noLoop();
  size(500,500);  
  new Die(20,20);
}
void draw()
{
	background(255);
  show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieLen, myX, myY;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
    dieLen = 10;
    myX = x;
    myY = y;
    
    
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
	  while(x < 500)
    {
      	rect(myX + 50,myY,dieLen,dieLen);
	}
}
