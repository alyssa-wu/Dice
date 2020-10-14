void setup()
{
  size(460, 500);
  noLoop();
  fill(255);
  textSize(18); 
}


void draw()
{  int sum = 0;
  background(106, 0, 244);
  for(int y = 3; y <= 400; y = y + 90)
  {
    for(int x = 10; x <= 400; x = x + 90)
    {  
      Die dice = new Die(x, y);
      dice.show();
      sum += dice.dots;
    }

  }
  fill(255);
  text("Total # of dots: " + sum, 150, 490);
}


void mousePressed()
{
  redraw();
}


class Die //models one die
{
  //variable declarations here
  int myX, myY, dots;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
    dots = (int)(Math.random() * 6) + 1;
    
  }
  void show()
  {
    //your code here
    if(dots == 1){
      fill(97, 255, 181);
      rect(myX, myY, 80, 80, 7);
      fill(106, 0, 244);
      ellipse(myX + 40, myY + 40, 15, 15);
    }
    if(dots == 2){
      fill(97, 255, 129);
      rect(myX, myY, 80, 80, 7);
      fill(106, 0, 244);
      ellipse(myX + 13, myY + 13, 15, 15);
      ellipse(myX + 67, myY + 67, 15, 15);
    }
    if(dots == 3){
      fill(97, 255, 129);
      rect(myX, myY, 80, 80, 7);
      fill(106, 0, 244);
      ellipse(myX + 13, myY + 13, 15, 15);
      ellipse(myX + 40, myY + 40, 15, 15);
      ellipse(myX + 67, myY + 67, 15, 15);
    }
    if(dots == 4){
      fill(97, 255, 181);
      rect(myX, myY, 80, 80, 7);
      fill(106, 0, 244);
      ellipse(myX + 13, myY + 13, 15, 15);
      ellipse(myX + 67, myY + 67, 15, 15);
      ellipse(myX + 13, myY + 67, 15, 15);
      ellipse(myX + 67, myY + 13, 15, 15);
    }
    if(dots == 5){
      fill(97, 255, 129);
      rect(myX, myY, 80, 80, 7);
      fill(106, 0, 244);
      ellipse(myX + 13, myY + 13, 15, 15);
      ellipse(myX + 67, myY + 67, 15, 15);
      ellipse(myX + 13, myY + 67, 15, 15);
      ellipse(myX + 67, myY + 13, 15, 15);
      ellipse(myX + 40, myY + 40, 15, 15);
    }
    if(dots == 6){
      fill(97, 255, 181);
      rect(myX, myY, 80, 80, 7);
      fill(106, 0, 244);
      ellipse(myX + 13, myY + 13, 15, 15);
      ellipse(myX + 67, myY + 67, 15, 15);
      ellipse(myX + 13, myY + 67, 15, 15);
      ellipse(myX + 67, myY + 13, 15, 15);
      ellipse(myX + 13, myY + 40, 15, 15);
      ellipse(myX + 67, myY + 40, 15, 15);
    }
  }
}
