void setup(){  

    size(600,600); //<>//
    int m = 9;
    Lucas luc = new Lucas();
    println("El término máximo es: \n" + luc.nesimo(m) + "\n\n\n");
    luc.serie(m);
    luc.dibLineas(m);
}
   //<>//
public class Lucas{
  
  public int nesimo(int N) {
    
    if( N == 0 ) return 2;
    if( N == 1 ) return 1;
    return nesimo(N-1) + nesimo(N-2);
  
  }
  
  public void serie(int n){
  
    for (int i = 2; i <= n; i++ ){
    
      println(nesimo(i) + " ");
    }
  }
  
  public void dibLineas(int n){
  
    int max = (nesimo(n));
    int w = width/2;
    int h = height/2;
    int cont2 = 1;
    for (int i = 2; i <= n; i++ ){
    
      int tmp = nesimo(i);
      float l = map(i,0,width,0,max);
      float m = map(i,0,height,0,max);
      //println( l + " " + m);
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
    }
  }
}