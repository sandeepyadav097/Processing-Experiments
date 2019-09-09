
ArrayList<Circle> Circles= new ArrayList<Circle>();
PImage img;


ArrayList<PVector> points=new ArrayList<PVector>();

boolean show=false;
void setup(){

   fullScreen();
  img=loadImage("2019.jpg");
  img.resize(1200,720);
  img.loadPixels();
  
    for(int i=0; i<img.width;i++){
     for(int j=0; j<img.height; j++){
      int loc=i+j*img.width;
      color c=img.pixels[loc];
      if(brightness(c)>100){
       PVector val=new PVector(i, j);
       points.add(val);
      }
     
    }
  }
  


}

void draw(){
  clear();
  
  if(show){
  Circle newC=createCircles();
  imageMode(CENTER);
  translate(width/15, height/15);
  //image(img,width/2, height/2);  
  //translate(-width/2, -height/2);
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
  
  
  int index=int(random(0, points.size()));
  PVector spot=points.get(index);
  int xCor=int(spot.x);
  int yCor=int(spot.y);
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
