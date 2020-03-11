package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.SellerServlet", urlPatterns = "/seller")
public class SellerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String profile_id = req.getParameter("profile");
        int id = Integer.parseInt(profile_id);
        req.setAttribute("seller", DaoFactory.getUsersDao().findById(id));
        req.getRequestDispatcher("/WEB-INF/sellers.jsp").forward(req,resp);
    }
}
