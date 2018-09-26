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
	int dieLen, myX, myY,roll;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
    dieLen = 75;
    myX = x;
    myY = y;
    
    
	}
	int roll()
	{
		return (int)(Math.random()*6)+1;
	}
	void show()
	{
	  for(int i = 0; i < 400; i+=110)
    {
      for(int d =0; d < 400; d+=110)	
      {
        int roll = roll();
        //System.out.println(roll);
        fill((int)(Math.random()*255),255,255);
        rect(d+20,i+20,dieLen,dieLen);
        if(roll == 1)
        {
          fill(0);
          ellipse(57+d,57+i,10,10);
        }
        else if(roll == 2)
        {
          fill(0);
          ellipse(d+40,i+40,10,10);
          ellipse(d+80,i+80,10,10);
        }
        else if(roll == 3)
        {
          fill(0);
          ellipse(d+40,i+40,10,10);
          ellipse(d+60,i+60,10,10);
          ellipse(d+80,i+80,10,10);
        }
        else if(roll == 4)
        {
          fill(0);
          ellipse(d+40,i+40,10,10);
          ellipse(d+80,i+80,10,10);
          ellipse(d+80,i+40,10,10);
          ellipse(d+40,i+80,10,10);
        }
        else if(roll == 5)
        {
          fill(0);
          ellipse(d+40,i+40,10,10);
          ellipse(d+80,i+80,10,10);
          ellipse(d+80,i+40,10,10);
          ellipse(d+40,i+80,10,10);
          ellipse(d+60,i+60,10,10);
        }
        else if(roll == 6)
        {
          fill(0);
          ellipse(d+40,i+40,10,10);
          ellipse(d+80,i+80,10,10);
          ellipse(d+80,i+40,10,10);
          ellipse(d+40,i+80,10,10);
          ellipse(d+40,i+60,10,10);
          ellipse(d+80,i+60,10,10);
        }
      }
    }
	}
}
