package com.codeup.adlister.controllers;
        import com.codeup.adlister.dao.DaoFactory;
        import com.codeup.adlister.models.Ad;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;
        import java.sql.Connection;
        import java.sql.PreparedStatement;

@WebServlet("/ads/update")
public class UpdateAdsServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("/WEB-INF/ads/update.jsp")
                .forward(request,response);
    }

//    String sql = "UPDATE Ads SET title=?, description=?";
//    PreparedStatement statement = Connection.prepareStatement(sql);
//    statement.setString(1, "123");
//    statement.setString(2, "234");
//    int rowsUpdated = statement.executeUpdate();
//    if(rowsDeleted > 0){
//        System.out.println("Ad Updated Successfully!");
//    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Ad ad = new Ad(
                1, // for now we'll hardcode the user id
                request.getParameter("title"),
                request.getParameter("description")
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
