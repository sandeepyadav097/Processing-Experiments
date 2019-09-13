PImage img;
boolean show=false;

void setup() {
  fullScreen();
  background(0,0,0);
  img= loadImage("image.jpg");
  img.resize(width,height);
  img.loadPixels();
  noCursor();
}


void draw() {
  //image(img, 0, 0);
if(show){
  for(int i=0; i<50; i++){ 
  int x=int(random(0,width));
  int y=int(random(0,height));
  color c=img.get(x,y);
  fill(c);
  stroke(c);
  strokeWeight(0);
  ellipse(x, y, random(1,5), random(1,5));
  }}
    if(mousePressed){
      show=true;
  }
}
