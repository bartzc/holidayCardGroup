XmasTree tree1 = new XmasTree(300, 500, 50, 70); // Create new tree object
XmasTree tree2 = new XmasTree(600, 600, 100, 150); // ONLY ONE TREE'S LIGHTS WILL WORK AT A GIVEN TIME
int timer = 0; // Keeps tree lights changing color at a steady pace by counting frames\
snowFlake[] mySnow = new snowFlake[100];
Snowman sm = new Snowman();
void setup(){
  size(1000,1000);
  
  frameRate(60);
  for(int i = 0; i<mySnow.length; i++){
    mySnow[i] = new snowFlake();
  }
  
}

void draw(){
  timer++;
  background(0);
  tree1.display();
  tree2.display();
  
  sm.display();
  for (int i = 0; i<mySnow.length; i++) {
    
    mySnow[i].display();
    mySnow[i].move();
  }
  
  
}
