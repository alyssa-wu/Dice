//Die dice = new Die(30,20); //instanstiated dice

void setup()
{
  size(300, 300);
  textAlign(CENTER, CENTER);
  noLoop();
}


void draw()
{
  background(200);
   for (int i = 1; i < 5; i++)
     {
       Die dice = new Die(60*i, 20);
       dice.show();
     }
     //your code here
}


void mousePressed()
{
  redraw();
}


class Die //models one single dice cube
{
  int myX, myY; //variable declarations here
  
  Die(int x, int y) //constructor
  {
    myX = x; //variable initializations here
    myY = y; 
  }
  void roll()
  {
    //your code here
  }
  
  
void show()
  {
    int dotNum;
    int size = 50;
    fill(255);
    rect(myX, myY, size, size, 7); //your code here
    fill(0);
    dotNum = (int)(Math.random()*6)+1;
    text(dotNum, myX + size/2, myY + size/2);
  }
}
