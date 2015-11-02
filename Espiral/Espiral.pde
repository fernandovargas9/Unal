/*
esta función retorna el nesimo término de la serie de fibonacci 
*/
float d = 0;
float r = 0;


void Prueba(){
println("Probando la colaboracion");
}


float fibo(float n){
  //Salida de la recursión
  if(n==1){
   return 0;
  }
  if (n == 2){
   return 1; 
  }
  //Avance de la recursión
  if (n>2){
    return fibo(n-2) + fibo(n-1);
  }
  //
  return -1;
}  

void setup(){
  
  float squares=fibo(10);

  size(600,500);
  
  float w = width /squares;
    float h = height /squares;
  for(int i=0;i < squares; i++){
    for(int j = 0; j <squares; j++){
      fill(map(fibo(i+1),0,fibo(squares),0,255));
        rect(width/2 + cos(d) * r, height/2 + sin(d) * r,5,5);
            d = d + 0.05;
            r = r + 0.1;
      //rect(i*w,j*h,w,50);
    }
  }
}