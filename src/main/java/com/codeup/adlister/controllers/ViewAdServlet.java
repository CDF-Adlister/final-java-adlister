package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.ViewAdServlet", urlPatterns = "/ads/show")
public class ViewAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        String searchFor = request.getParameter("id");
        System.out.println(searchFor);
        request.setAttribute("ad", DaoFactory.getAdsDao().findByID(searchFor));
        request.getRequestDispatcher("/WEB-INF/ad.jsp").forward(request, response);
    }
}
