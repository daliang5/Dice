void setup()
{
	noLoop();
  size(500,500);  
  
}
void draw()
{
	background(255);
  Die bob = new Die(100,50);
  bob.show();
  
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
    dieLen = 75;
    myX = x;
    myY = y;
    
    
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
	  for(int i = 0; i <400; i+=110)
    {
      for(int d =0; d < 400; d+=110)	
      {
        fill((int)(Math.random()*255),255,255);
        rect(d+20,i+20,dieLen,dieLen);
      }
    }
	}
}
