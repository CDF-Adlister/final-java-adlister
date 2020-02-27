import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/")
public class HelloWorldServlet extends HttpServlet {
    private int count = 0;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        count++;
        String name = request.getParameter("name");
        if(name == null){
            name = "Cash";
        }
        response.setContentType("text/html");
        response.getWriter().println("<h1>Hello World from, " + name + "</h1>");
        response.getWriter().println("<p>Page Visits = " + count + "</p>");
    }
}
