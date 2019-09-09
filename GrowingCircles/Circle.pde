class Circle{
  int x;
  int y;
  float r;
  color col=color(random(0,255),random(0,255),random(0,255));
  Circle(int xcor, int ycor, int radius){
  x=xcor;
  y=ycor;
  r=radius;
  }
  
  
  void drawFigure(){
    fill(col);
    stroke(255);
    strokeWeight(2);
    ellipse(x,y,2*r,2*r);
  }
  
  void grow(){
    if(!crossEdges() && !overlapping()){
     r=r+1;
    }
    
  }
   
  boolean crossEdges(){
      return (x+r>width || x-r<0 || y+r>height || y-r<0);
  }
  
  boolean overlapping(){
      
    for(Circle C: Circles){
       if(this!=C){
        float d= dist(x, y, C.x, C.y);
        
        if(d-2<r+C.r){
          return true;
        }
      
       }
    
    }
    
    return false;
    
  }
}
