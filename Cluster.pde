public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  public Tendril tendril;

  public Cluster(int len, int x, int y) {
    tendril = new Tendril(len, Math.random() * Math.PI * 2, x, y);
    tendril.show();
  }
}
