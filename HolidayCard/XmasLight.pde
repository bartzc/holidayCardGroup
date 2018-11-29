class XmasLight{
  
  float r = 255;
  float g = 255;
  float b = 255;
  public XmasLight(){
    
  }
  
  void colorChange(){
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
  float getR(){
    return r;
  }
  float getG(){
    return g;
  }
  float getB(){
    return b;
  }
  
}
