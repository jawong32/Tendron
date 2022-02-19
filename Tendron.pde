public void setup() {
  size(900, 900);  
  background(0);
  noLoop();
  stroke(255);
}

public void draw() {
  background(0);
  Cluster c = new Cluster(40, 450, 450); // initial number of segments in the tendril and starting (x,y) coordinate
}

public void mousePressed() {
  redraw();
}
