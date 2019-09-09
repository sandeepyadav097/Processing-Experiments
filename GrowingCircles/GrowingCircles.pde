
ArrayList<Circle> Circles= new ArrayList<Circle>();
boolean show=false;
void setup(){

  fullScreen();
 

}

void draw(){
  clear();
  if(show){
  
  Circle newC=createCircles();
  
 
  if(newC!=null){
    Circles.add(newC);
  }
  for(Circle c: Circles){
    
    c.drawFigure();
    c.grow();
  }
  }
  if(mousePressed){
  show=true;
  }

}

Circle createCircles(){
  int xCor=int(random(0, width));
  int yCor=int(random(0,height));
  int radius=0;
  
  for(Circle x: Circles){
    float d=dist(x.x, x.y, xCor, yCor);
    if(d<x.r+radius){
    return null;
    }
  }
  
   Circle newC= new Circle(xCor, yCor, radius);
 return newC;
}
