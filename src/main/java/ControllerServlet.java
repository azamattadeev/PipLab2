import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ControllerServlet extends HttpServlet {
    private ServletContext context;

    @Override
    public void init() throws ServletException {
        context = getServletContext();
        super.init();
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        String yString = req.getParameter("yValue");
        String xString = req.getParameter("xValue");
        String rString = req.getParameter("rValue");
        if (xString == null || yString == null || rString == null) {
            resp.sendRedirect("form.jsp");
            return;
        }else {
            try {
                double x = Double.parseDouble(xString);
                int r = Integer.parseInt(rString);
                double y =Double.parseDouble(yString);
                if (x < -3 || x > 5 || y <= -5 || y >= 3 || r < 1 || r > 5){
                    resp.sendRedirect("form.jsp");
                    return;
                }
            } catch (Exception ex) {
                resp.sendRedirect("form.jsp");
                return;
            }
            context.getRequestDispatcher("/WEB-INF/pages/result.jsp").forward(req, resp);
        }
    }


}
