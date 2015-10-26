Lucas sequence = new Lucas();
void setup(){

  size(800,600);
}

void draw() {
  background(0);
  sequence.lineChart(20);
  println(sequence.author());
}