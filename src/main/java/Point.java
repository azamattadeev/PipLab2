public class Point {
    private double x;
    private double y;
    private int r;
    private boolean inArea;

    public Point(double x, double y, int r){
        this.x = x;
        this.y = y;
        this.r = r;
        inArea = false;
        if (x >= 0 && y >= 0 && y >= -x + r) inArea = true;
        if (x >= 0 && y <= 0 && y >= -r && x <= r/2) inArea = true;
        if (x <= 0 && y >= 0 && x*x + y*y <= r*r) inArea = true;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public int getR() {
        return r;
    }

    public boolean isInArea() {
        return inArea;
    }
}
