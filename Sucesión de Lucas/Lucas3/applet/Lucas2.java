import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Lucas2 extends PApplet {

public float Lucas(float N) {
    
  if( N == 0 ) return 2;
  if( N == 1 ) return 1;
  return Lucas(N-1) + Lucas(N-2);
  
}

public void setup(){
  
  size(600,600);
  int x = 20;
  float x1 = 20;
  float max = sqrt(Lucas(x1)+Lucas(x1));
  float[] numbers = new float[x+1];
  int[] num = new int[x+1];
  int w=(width/2),y=(height/2);
  
  for( int i = x; i > -1; i-- ) {
    
      numbers[i] = 0;   
      numbers[i] = Lucas(i);
      println(PApplet.parseInt(numbers[i]) + " ");
      //rect(w,y,map(numbers[i],0,max,0,600),map(numbers[i],0,max,0,600));
      pushMatrix();
      translate(w,y);
      rotate(radians(45*i));
      fill(map(numbers[i],0,max,0,x),map(numbers[i],max,0,0,x),map(numbers[i],0,max,0,255));
      rect(0,0,map(numbers[i],0,max,0,width),map(numbers[i],0,max,0,height));
      popMatrix();
  }
  println("\n\nEl valor m\u00e1ximo de la sucesi\u00f3n es: ");
  println(PApplet.parseInt(Lucas(x)));
  
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "Lucas2" });
  }
}
