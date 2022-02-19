class Tendril
{
  public final static int SEG_LENGTH = 6; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y) {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }

  public void show() {
    strokeWeight(myNumSegments / 4);
    int offset = myNumSegments / 7;
    float r = Math.max((float) (Math.sin(offset / 2) * 200), 80);
    float g = Math.max((float) (Math.sin(offset) * 200), 40);
    float b = Math.max((float) (Math.tan(offset * 2 / 3) * 200), 90);
    stroke(b, g, r);
   
    float startX = myX, startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += Math.random() * 0.4 - 0.2;
      float endX = startX + (float) Math.cos(myAngle) * SEG_LENGTH;
      float endY = startY + (float) Math.sin(myAngle) * SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments < 1) return;
    cluster = new Cluster((int) myNumSegments * 0.4, (int) startX, (int) startY);
  }
}
