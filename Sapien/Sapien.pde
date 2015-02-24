//Edd Brown Jr.
 
 
 float xNoise = 0.0;
 float yNoise = 0.0;
 //int 1Third = width/3;
 //int 2Third = width * (2/3);


void setup()
{
   size(700, 600);
   background(0);
   
}

void draw()
{
  
  
   Pointer point = new Pointer(10);
    
    
    point.bar();
  xNoise = xNoise + .03;
  yNoise = yNoise + random(.03, .20);
  
  float n = noise(xNoise) * width/2;
  float n2 = noise(yNoise) * random(50, height/4);
  
  
        if(mousePressed)
        //hits
        {
          background(168,17,17);
        }
        else
        {
            //middle
            if(width/3 < mouseX&& mouseX < width*2/3)
            {
              fill(200);
              ellipse(350, 250, n, n);
            }
            
            //bottom center
            fill(150);
            ellipse(400, 400, n, n2);
            
            //left
            if((mouseX < width/3 +40 && mouseX > 10) || (mouseX >=600 && mouseX <690))
              ellipse(100, 100, n, n);
            
            //right
            if(width*2/3 - 200 <mouseX && mouseX< 690)
            {
              fill(random(255));
              ellipse(600, 100, n2, n);
            }
            if(mouseX > 10)
            {
             stroke(255);
             rect(width/3, 0, 5, 100);
             rect(width * 2/3, 0, 5, 100);
            }
         }
    
}

void mouseReleased()
{
  background(0);
}

