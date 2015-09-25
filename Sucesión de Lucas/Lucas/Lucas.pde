public int Lucas(int N) {
    
  if( N == 0 ) return 2;
  if( N == 1 ) return 1;
  return Lucas(N-1) + Lucas(N-2);
  
}

void setup(){
  
  size(800,600);
  int x = 20;
  int max = Lucas(x);
  int w = width/2;
  int h = height/2;
  //int cont = 1;
  int cont2 = 1;
  for( int i = 2; i <= x; i++ ) {
    
    int tmp = Lucas(i);
    print(Lucas(i) + " "); 
    float l = map(i,0,width,0,max);
    float m = map(i,0,height,0,max);
    println( l + " " + m);
    switch(cont2){
    
      
      case 1:
        line(w,h,w+tmp,h-tmp);
        w = w+tmp;
        h = h-tmp;
        cont2 = cont2 +1;;
        break;
        
      case 2:
        line(w,h,w+tmp,h+tmp);
        w = w+tmp;
        h = h+tmp;
        cont2 = cont2+1;;
        break;
       
       case 3:
        line(w,h,w-tmp,h+tmp);
        w = w-tmp;
        h = h+tmp;
        cont2 = cont2+1;;
        break;
       
       case 4:
        line(w,h,w-tmp,h-tmp);
        w = w-tmp;
        h = h-tmp;
        cont2 = 1;
        break;
    }
    
    //cont2 = cont2+1;
     
  }
  
  

}