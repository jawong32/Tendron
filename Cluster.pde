public class Cluster
{
  public final static int NUM_STEMS = 9; //number of tendrils per cluster

  public Cluster(int len, int x, int y) {
    for (int i = 0; i < NUM_STEMS; i++) {
      tendril = new Tendril(len, Math.PI * 2 / NUM_STEMS * i, x, y);
      tendril.show();
    }
  }
}
