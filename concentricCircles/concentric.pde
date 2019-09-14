class circles{
  float x;
  float y;
  float r;
  float rotval;
  int stroke=30;
  float count=random(-20,100);
  int d;
  color c=color(random(0,255),random(0,255), random(0,255));
  
  circles(float xcor, float ycor, float radius,int direction){

    x=xcor;   
    y=ycor;
    r=radius;
    rotval=100;
    if(direction==0){
    d=1;
    
    }
    else{
    d=-1;
    }
  }
  
  void drawCircles(){
   stroke(c);
   strokeWeight(stroke);
  
   arc(0,0,r,r,radians(rotval+d*count),radians(rotval+d*count+100));
   count+=5;   
  }



}
