void setup()
{
 size(800,800); 
}
int Cs = 800;
int r = Cs/2; 


void draw () {
  stroke(0, 0, 0);
  
    float cx = constrain(mouseX,0,800);
    float x = cx-r;
    float slope = (1/(2*sqrt(sq(r)-sq(x))))*(-2*x);

    float point2 = Cs-cx;
    float circleY = -sqrt(sq(r)-sq(x))+r;
    float slope2 = tan((atan((slope)))-(radians(90)-((atan((slope))))));
    background(144, 240, 234);
    stroke(0, 0, 0);
    strokeWeight(2);
    noFill();

    ellipse(r, r, Cs, Cs);
    strokeWeight(4);
    line(0,r,Cs,r);
    strokeWeight(9);

    point(cx,r);
    point(point2,r);
    point(cx,circleY);
   // point(interceptChecker(r,slope2,cx,circleY),circle(interceptChecker(r,slope2,cx,circleY),r)); 
    
    strokeWeight(1);
    line(cx,r,cx,circleY);
   // slopeLine(mouseX,circleY,slope, 400);
   // slopeLine(mouseX,circleY,(-1/slope),400);
    ray(cx,circleY,slope2,Cs);
    
   
   
   
    
    fill(144, 240, 234);
    noStroke();
    rect(0,r,Cs,Cs);
    
     fill(0, 0, 0);
     text("Derivitave is " + slope,10,10);
 
};

float interceptChecker(float radius, float slope , float xCor, float yCor)
{
  float x = ((2*(yCor*slope))-(2*(sq(slope)*(xCor)))-sqrt((4*(sq(slope)*sq(radius)))+(8*((yCor)*(slope)*(xCor)))-(4*(sq(slope)*sq(xCor)))+(4*(sq(radius)))-(4*(sq(yCor)))))/(2*((-1*(sq(slope)))-1));         

  return x;
};
float circle(float xPos, float radius)
{
  float y = -sqrt(sq(radius)-sq(xPos-r))+r;
  return y;
};

void slopeLine(float x, float y, float slope, float size)
{
  line(x+size,((-slope*((x+size)-x))+y),x-size,((-slope*((x-size)-x))+y));
};

void ray(float x, float y, float slope, float size)
{
  if(x <= r)
  {

    line(x+size,((-slope*((x+size)-x))+y),x,((-slope*((x)-x))+y));
  }
  else
  {
        line(x,((-slope*((x)-x))+y),x-size,((-slope*((x-size)-x))+y));

  }
 
};