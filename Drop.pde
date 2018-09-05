class Drop{
  
   //Placement variables
   float x = random(width);
   float y = random(-500, -50);
   float z = random(0, 20);
   float len = map(z, 0 , 20, 10, 20);
   float ySpeed = map(z, 0, 20, 4, 10);
   
   void fall(){
     y = y + ySpeed; //Moving object by the speed
     ySpeed = ySpeed + 0.05; //Make it get faster per tick
     if(y > height){
        y = random(-200, -100); //Randomly spawn object above the frame and moves it down
        ySpeed = map(z, 0, 20, 4, 10);
        x = random(width); //Randomly places it horizontally on the frame
     }
   }
   
   void show(){
     float thick = map(z, 0, 20, 1, 3); //Determining thickness of rain object
     strokeWeight(thick);
     stroke(138, 43, 226); 
     line(x, y, x, y + len); //Drawing the object
   }  
  
}
