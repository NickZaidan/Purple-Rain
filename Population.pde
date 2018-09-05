//Drop holder for the objects
Drop[] drops = new Drop[500];

void setup(){
  size(1280,720);
  for(int i = 0; i < drops.length; i++){
    drops[i] = new Drop();  //Initialise the objects
  }
  
}

void draw(){
  background(230,230,250);
  for(int i = 0; i < drops.length; i++){
    drops[i].fall(); //Moving the objects
    drops[i].show(); //Redrawing the objects
  }
}
