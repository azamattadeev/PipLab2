import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class GenerateScriptServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = getServletContext();
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        HashMap<String, List<Point>> map = (HashMap<String, List<Point>>) context.getAttribute("pointsListsMap");
        if(map == null) return;
        List<Point> pointsList = map.get(session.getId());
        int listSize = pointsList.size();
        Iterator<Point> iterator = pointsList.iterator();
        int count = 0;
        out.println("<script>");
        out.println("var pointsArray = new Array(" + listSize + ")");
        while (iterator.hasNext()) {
            Point point = iterator.next();
            out.println("pointsArray[" + count++ + "] = [" + point.getX() + ","+point.getY()+","+point.getR()+","+point.isInArea()+"];");
        }
        out.println("</script>");
    }
}
