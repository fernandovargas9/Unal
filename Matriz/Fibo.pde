/*
esta función retorna el nesimo término de la serie de fibonacci 
*/

/*int numero (){

  println("Introduzca el número para la serie de fibonacci");
  int x = input();
  return x;
}*/

float fibo(float n){
  //Salida de la recursión
  if(n==1){
   return 0;
  }
  else if (n == 2){
   return 1; 
  }
  //Avance de la recursión
  else if (n>2){
    return fibo(n-2) + fibo(n-1);
  }
  //
  return -1;
}  

void setup(){
  int x = 26;
  float squares = fibo(x);
  
  println(squares);
  
  //println(squares + "    " + w + "    "  + x2);
  size(620,620);
  
  float dec = sqrt(squares) - int(sqrt(squares));
  int dec2 = int(dec*10);
  int x1 = 0;
  int y1 = 0;
  int col = 0;
  int arrow = 0;
  int intarrow = 0;
  
  if(dec2 >= 5){
    
    col = int(sqrt(squares))+1;
    intarrow = col-1;
    arrow = col;
  }
  
   if(dec2 < 5){
    
    col = int(sqrt(squares));
    intarrow = col;
    arrow = col+1;
  }
  
  int w = width/col;
  int h = height/arrow;
  int r = 255,g = 0,b = 0;
  int tempg;
  
  println(col + " " + arrow + " " + intarrow + "   " + w + "   " + h);
 
   for(int i =1; i<=col;i++){
     
     for (int l = 1; l <= intarrow; l++){
     
       r = int(map(i,arrow,0,0,255));
       g = int(map(l,0,col,0,255));
       b = int(map(i,0,arrow,0,255));
       fill(r, g, b);
       rect(x1,y1,w,h);
       x1 = x1+w;
       tempg = g;
     }
     //g = int(map(i,0,squares,0,255));
     x1 =0;
     //println(r+ " " + g + " " +b);
     //rect(x1,y1,w,h);
     y1 = y1 + h;
     //tempg = g;
   }
   

   //println(tempg);
   int sq = int(squares);
   
   for (int a = (intarrow*col)+1; a <= squares; a++){
   
     //g = int(map(a,0,intarrow,0,255));
     b = int(map(a,0,arrow,0,255));
     fill(r, g, b);
     rect(x1,y1,w,h);
     x1 = x1+w;
   }
  
}