import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class AreaCheckServlet extends HttpServlet {
    private ServletContext context;

    @Override
    public void init() throws ServletException {
        context = getServletContext();
        HashMap<String, ArrayList<Point>> pointsListsMap = (HashMap<String, ArrayList<Point>>)context.getAttribute("pointsListsMap");
        if (pointsListsMap == null) context.setAttribute("pointsListsMap", new HashMap<String, LinkedList<Point>>());
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String SSID = req.getSession().getId();
        HashMap<String, ArrayList<Point>> pointsListsMap = (HashMap<String, ArrayList<Point>>) context.getAttribute("pointsListsMap");

        String xString = req.getParameter("xValue");
        String yString = req.getParameter("yValue");
        String rString = req.getParameter("rValue");

        double x = Double.parseDouble(xString);
        int r = Integer.parseInt(rString);
        double y = Double.parseDouble(yString);

        Point currentPoint = new Point(x,y,r);
        List<Point> pointsList = pointsListsMap.get(SSID);
        if (pointsList == null) {
            pointsListsMap.put(SSID, new ArrayList<Point>());
            pointsList = pointsListsMap.get(SSID);
        }
        pointsList.add(currentPoint);

    }
}
