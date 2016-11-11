void setup()
{
 size(400,400); 
}

 


void draw () {
  stroke(0, 0, 0);
  strokeWeight(2);
  noFill();

  ellipse(200, 200, 200, 200);
  line(100,200,300,200);
  strokeWeight(3);

    float x = mouseX-200;
    float slope = (1/(2*sqrt(sq(100)-sq(x))))*(-2*x);

    float point2 = 400-mouseX;
    float vertLine = -sqrt(sq(100)-sq(x))+200;
    background(144, 240, 234);
    stroke(0, 0, 0);
    strokeWeight(2);
    noFill();

    ellipse(200, 200, 200, 200);
    line(100,200,300,200);
    strokeWeight(7);

    point(mouseX,200);
    point(point2,200);
    point(mouseX,vertLine);
    text("X value is " + x,16,20);
    
    strokeWeight(1);
    line(mouseX,200,mouseX,vertLine);
    line(mouseX,vertLine,mouseX+100,vertLine+100);
    line(mouseX,vertLine,point2,vertLine);
    
    fill(144, 240, 234);
    noStroke();
    rect(0,200,400,200);
    
    fill(245, 240, 240);
     text("Derivitave is " + slope,10,10);
 
};

void slopeLine()
{
  