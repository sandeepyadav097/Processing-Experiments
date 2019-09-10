class ArcClass{
  int x=int(random(150, width));
  int y=int(random(150, height));
  int radius=int(random(100, 200));  
  color c=color(random(0, 255), random(0, 255), random(0, 255));
  float thickness=random(4,40);
  float start=random(0,2*PI);
  
  
  float length=0;
  void drawArcs()
  {
    noFill();
    strokeWeight(thickness);
    stroke(c);
    
    arc(x,y, radius, radius, start,map(mouseX, 0,width/1.5, 0,2*PI));
    length+=0.01;
    //if(length%360==0){
    //length=0;
    //c=color(random(0, 255), random(0, 255), random(0, 255));
    //}
  }

}
