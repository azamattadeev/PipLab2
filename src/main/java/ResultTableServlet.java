import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ResultTableServlet extends HttpServlet {
    ServletContext context;

    @Override
    public void init() throws ServletException {
        context = getServletContext();
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        HashMap<String, List<Point>> map = (HashMap<String, List<Point>>) context.getAttribute("pointsListsMap");
        if (map == null) return;
        List<Point> pointsList = map.get(req.getSession().getId());
        Iterator<Point> iterator = pointsList.iterator();
        if (pointsList.size() == 0) return;
        out.println("<table class=\"results-table\">");
        out.println("<caption>Check result</caption>");
        out.println("<tr>");
        out.println("<th>" + "X" + "</th>");
        out.println("<th>" + "Y" + "</th>");
        out.println("<th>" + "R" + "</th>");
        out.println("<th>" + "Result" + "</th>");
        out.println("</tr>");
        while(iterator.hasNext()){
            Point point = iterator.next();
            String resultString = (point.isInArea()) ? "Hit!" : "Miss!";
            out.println("<tr>");
            out.println("<td>" + point.getX() + "</td>");
            out.println("<td>" + point.getY() + "</td>");
            out.println("<td>" + point.getR() + "</td>");
            out.println("<td>" + resultString + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");
    }
}
