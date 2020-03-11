package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ads/delete")
public class DeleteAdsServlet extends HttpServlet{
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp")
//                .forward(request,response);
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id =  Integer.parseInt(request.getParameter("id"));
        Ads adsSqlDao = DaoFactory.getAdsDao();
        try {
            adsSqlDao.delete(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/ads")
                .forward(request,response);
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        Ad ad = new Ad(
//                1, // for now we'll hardcode the user id
//                request.getParameter("title"),
//                request.getParameter("description")
//        );
//        DaoFactory.getAdsDao().insert(ad);
//        response.sendRedirect("/ads");
//    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        Ad ad = new Ad(id);
//        MySQLAdsDao.delete(ad);
//        response.sendRedirect("/ads");
//    }
}