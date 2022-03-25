
void setup()  {
  fullScreen();
  background(0, 122, 255);
  stroke(255, 255, 255, 50);    //White pencil
  strokeWeight(2);
  noCursor();
  
}

void draw()  {
  //background(0, 199, 255);
  
  //Doouble-loop
  for (int x = 40; x <= width-40; x += 40)  {
    for (int y = 40; y <= height-40; y += 40)  {
     //1. Draw one point
     //point (x,y);
     //2. Calculate the distance between the cursor and the current point
     float distance = dist(x, y, mouseX, mouseY);
     //3. If the curent point is close enough to my cursor, draw one line between the two
     if (distance < 50)  {
       line(mouseX, mouseY, x, y);
     }
     
    }  //Closing y-loop
    
  }    //Closing x-loop
  
}      //Closing draw
