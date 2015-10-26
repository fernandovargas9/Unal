import java.util.Arrays;

Lucas sequence = new Lucas();
void setup(){

  size(800,600);
}

void draw() {
  background(0);
  sequence.lineChart(20);
  println(sequence.author());
}

abstract class Sequence {
  /**
   * The name of the author
   */
  abstract String author();
  
  /**
   * The sequence description
   */
  abstract String description();
  
  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);
  
  /**
   * Returns the first n seq terms as an array.
   */
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  
  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.toString(n))
   */
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  
  // All display functions must scale the canvas properly
  
  /**
   * Display n seq terms as you wish
   */
  abstract void display(int n);
   
  /**
   * Display n seq terms as a bar chart: https://en.wikipedia.org/wiki/Bar_chart
   * Warning: Should be implemented here in the super class!
   */
  void barChart(int n) {
    
    int maxi = compute(n);
    int cont = 0;
    for(int i = 0;i < maxi;i++){
      
        rect(0,cont,compute(i),(n/height)-20);
        cont = cont +((n/height)+20);
     }
  }
  
  /**
   * Display n seq terms as a line chart: https://en.wikipedia.org/wiki/Line_chart
   * Warning: Should be implemented here in the super class!
   */
  void lineChart(int n) {
    
     stroke(255);
     int x = 0, y = 0, maxi = compute(n);
     for(int i = 0; i < n; i++){
        line(x,y,width/maxi,height/maxi);
        x += compute(i);
        y += compute(i);
     } 

  }
  
  void curveFitting(int n) {

    
  }
}