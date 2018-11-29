class XmasTree {
  XmasLight[] light = new XmasLight[4]; // Makes xmas light objects
  float xpos; // X position
  float ypos; // Y position
  float xlength; // Length of trunk
  float ywidth; // Width of trunk
  public XmasTree(float xp, float yp, float l, float w) {
    xpos = xp;
    ypos = yp;
    xlength = l;
    ywidth = w;
    for (int i = 0; i < 4; i++) // Makes xmas light objects
    {
      light[i] = new XmasLight();
    }
  }

  void display() {
    stroke(0); // So that you can see outline of trunk
    fill(115, 70, 70); // The tree trunk
    rect(xpos, ypos, xlength, ywidth);
    fill(0, 100, 0);
    triangle(xpos - xlength, ypos, xpos + (xlength / 2), ypos - (ywidth * 3), xpos + (xlength * 2), ypos); // Tree pine (made so that it is proportional to the specific object parameters)
    //This is where lights are displayed and change color if needed
    if (timer == 60) {
      for (int i = 0; i < 4; i++) {
        light[i].colorChange();
      }
      timer = 0;
    }
    // Displays the lights, again making sure that they will be placed proportionally to the parameters set
    fill(light[0].getR(), light[0].getG(), light[0].getB());
    ellipse(xpos - (xlength / 4), ypos - (ywidth / 3), 20, 20); // Bottom left
    fill(light[1].getR(), light[1].getG(), light[1].getB());
    ellipse(xpos + xlength + (xlength / 4), ypos - (ywidth / 3), 20, 20); // Bottom right
    fill(light[2].getR(), light[2].getG(), light[2].getB());
    ellipse(xpos + xlength - (xlength / 5), ypos - ((ywidth * 3) / 2), 20, 20); // Top right
    fill(light[3].getR(), light[3].getG(), light[3].getB());
    ellipse(xpos + (xlength / 5), ypos - ((ywidth * 3) / 2), 20, 20); // Top left
    // Displays star on top of tree
    fill(250, 250, 210);
    ellipse(xpos + (xlength / 2), ypos - (ywidth *3), 30, 30);
  }
}
