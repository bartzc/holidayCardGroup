class Snowman {

  Snowman() {
  }

  void display() {
    //bottom ball
    fill(255);
    ellipse(285, 450, 220, 200);
    //arms
    fill(124,98,63);
    quad(205,260,200,290,110,210,105,190);
    quad(350,260,370,290,450,210,445,190);
    //middle ball
    fill(255);
    ellipse(282,300,170,150);
    
    //top ball
    ellipse(280,200,120,100);
    
    //arms,  buttons face
    fill(0);
    ellipse(282,275,20,20);//buttons
    ellipse(282,305,20,20);
    ellipse(282,335,20,20);
    
    
    
    ellipse(310,215,5,5);//face
    ellipse(300,225,5,5);
    ellipse(284,230,5,5);
    ellipse(258,215,5,5);
    ellipse(270,225,5,5);
    
    ellipse(265,175,10,10);//eyes
    ellipse(300,175,10,10);
    
    fill(242, 156, 43);
    ellipse(283,200, 40, 10);//nose
    
    
    
  }
}
