public float Lucas(float N) {
    
  if( N == 0 ) return 2;
  if( N == 1 ) return 1;
  return Lucas(N-1) + Lucas(N-2);
  
}

void setup(){
  
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
      println(int(numbers[i]) + " ");
      //rect(w,y,map(numbers[i],0,max,0,600),map(numbers[i],0,max,0,600));
      pushMatrix();
      translate(w,y);
      rotate(radians(45*i));
      fill(map(numbers[i],0,max,0,x),map(numbers[i],max,0,0,x),map(numbers[i],0,max,0,255));
      rect(0,0,map(numbers[i],0,max,0,width),map(numbers[i],0,max,0,height));
      popMatrix();
  }
  println("\n\nEl valor máximo de la sucesión es: ");
  println(int(Lucas(x)));
}
