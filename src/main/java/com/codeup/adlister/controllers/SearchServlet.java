package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String search = req.getParameter("search");

        if (search != null){
            req.setAttribute("search", DaoFactory.getAdsDao().search(search));
            req.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(req,resp);
        }
        else{
            resp.sendRedirect("/login");

        }


    }
}
