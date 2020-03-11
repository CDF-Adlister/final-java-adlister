package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AllSellerAds", urlPatterns = "/all")
class AllSellerAds extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user_id = req.getParameter("seller");
        int id = Integer.parseInt(user_id);
        req.setAttribute("user", DaoFactory.getUsersDao().findById(id));
        req.setAttribute("ads", DaoFactory.getAdsDao().findByUserId(user_id));
        req.getRequestDispatcher("/WEB-INF/allSellerAds.jsp").forward(req,resp);
    }
}

