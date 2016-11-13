import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Whisper_Dome_Proof extends PApplet {

public void setup()
{
  
}
int Cs = 800;
int r = Cs/2; 


public void draw () {
  stroke(0, 0, 0);
  
  strokeWeight(3);
    float cx = constrain(mouseX,100,300);
    float x = cx-200;
    float slope = (1/(2*sqrt(sq(100)-sq(x))))*(-2*x);

    float point2 = 400-cx;
    float circleY = -sqrt(sq(100)-sq(x))+200;
    float slope2 = tan((atan((slope)))-(radians(90)-((atan((slope))))));
    background(144, 240, 234);
    stroke(0, 0, 0);
    strokeWeight(2);
    noFill();

    ellipse(200, 200, 200, 200);
    strokeWeight(4);
    line(100,199,300,200);
    strokeWeight(9);

    point(cx,200);
    point(point2,200);
    point(cx,circleY);
    point(interceptChecker(100,slope2,cx,circleY),circle(interceptChecker(100,slope2,cx,circleY),100)); 
    
    strokeWeight(1);
    line(cx,200,cx,circleY);
   // slopeLine(mouseX,circleY,slope, 400);
   // slopeLine(mouseX,circleY,(-1/slope),400);
    ray(cx,circleY,slope2,400);
    
   
   
   
    
    fill(144, 240, 234);
    noStroke();
    rect(0,200,400,200);
    
     fill(0, 0, 0);
     text("Derivitave is " + slope,10,10);
 
};

public float interceptChecker(float radius, float slope , float xCor, float yCor)
{
  float x = ((2*(yCor*slope))-(2*(sq(slope)*(xCor)))-sqrt((4*(sq(slope)*sq(radius)))+(8*((yCor)*(slope)*(xCor)))-(4*(sq(slope)*sq(xCor)))+(4*(sq(radius)))-(4*(sq(yCor)))))/(2*((-1*(sq(slope)))-1));         

  return x;
};
public float circle(float xPos, float radius)
{
  float y = -sqrt(sq(radius)-sq(xPos-200))+200;
  return y;
};

public void slopeLine(float x, float y, float slope, float size)
{
  line(x+size,((-slope*((x+size)-x))+y),x-size,((-slope*((x-size)-x))+y));
};

public void ray(float x, float y, float slope, float size)
{
  if(x <= 200)
  {

    line(x+size,((-slope*((x+size)-x))+y),x,((-slope*((x)-x))+y));
  }
  else
  {
        line(x,((-slope*((x)-x))+y),x-size,((-slope*((x-size)-x))+y));

  }
 
};
  public void settings() {  size(400,400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Whisper_Dome_Proof" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
