//Edd Brown Jr.


//pointer is a symbol or shape that followds the mouse
class Pointer
{
  Pointer(int radius)
  //circle pointer
  {
       ellipse(mouseX, height/2, radius, radius);
  }
  
  void bar()
  //Bar across window with a pointer in it
  {
      fill(255);
      rect(0, height/2 -5, width, 10);
      fill(0);
      rect(mouseX, height/2-5, 10, 10);
  }
  
  void bar(int grayColor)
  {
      fill(0);
      rect(0, height/2 -5, width, 10);
      fill(0);
      rect(mouseX, height/2-5, 10, 10);
  }
}

