package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete")
public class DeleteAdsServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//        long id = Long.parseLong(request.getParameter("id"));
//        Ads adsSqlDao = DaoFactory.getAdsDao();
//        try {
//            adsSqlDao.delete((int) id);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp")
//                .forward(request,response);
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            DaoFactory.getAdsDao().delete(Integer.parseInt(request.getParameter("selectedDeleteAd")));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("/profile");
    }


}