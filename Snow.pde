snowFlake[] mySnow = new snowFlake[100];

void setup() {
  size(600, 600);
  background(0);
  for(int i = 0; i<mySnow.length; i++){
    mySnow[i] = new snowFlake();
  }
}


void draw() {
  println(mouseX, mouseY);
  background(0);
  for (int i = 0; i<mySnow.length; i++) {
    
    mySnow[i].display();
    mySnow[i].move();
  }
}
