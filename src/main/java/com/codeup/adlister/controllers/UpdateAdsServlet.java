package com.codeup.adlister.controllers;
        import com.codeup.adlister.dao.DaoFactory;
        import com.codeup.adlister.dao.ListAdsDao;
        import com.codeup.adlister.dao.MySQLAdsDao;
        import com.codeup.adlister.models.Ad;
        import com.codeup.adlister.models.User;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;
        import java.sql.Connection;
        import java.sql.PreparedStatement;
        import java.sql.SQLOutput;

@WebServlet("/ads/update")
public class UpdateAdsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String update = request.getParameter("selectedUpdateAd");
        request.setAttribute("ad", DaoFactory.getAdsDao().findByID(update));
        request.getRequestDispatcher("/WEB-INF/ads/update.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String ad_id = request.getParameter("id");
        long id = Long.parseLong(ad_id);
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        DaoFactory.getAdsDao().update(id, title, description);
        response.sendRedirect("/profile");
    }
}
