class Lucas extends Sequence{
  
  int n = 20;
  
  int maxi = compute(n);
  String author = "Nicolás Viveros";
  String description = "Compute, graph, and display the n term of the Lucas Numbers sequence";
   
  String author(){
   
    return author;
  }
  
  String description(){
  
    return description();
  }
   
  int compute(int n){
  
    if (n == 0){
    
      return 2;
    }
    else if (n == 1){
    
      return 1;
    }
    else{
    
      return (compute(n-1) + compute(n-2));
    }
  }
  
  void display(int n){
  
  }
}