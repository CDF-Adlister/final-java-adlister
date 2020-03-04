import Item.java.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/itemIndex")
public class ItemServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        Items itemsDao = ItemDaoFactory.getItemsDao();
        List<Item> items = itemsDao.all();
        request.setAttribute("items", items);
        request.getRequestDispatcher("/itemIndex.jsp").forward(request, response);
    }

}
