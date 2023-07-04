/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.CustomerDAO;
import dal.DAO;
import entity.ReviewList;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author taote
 */
@WebServlet(name="LoadReview", urlPatterns={"/load-reviews"})
public class LoadReview extends HttpServlet {
   
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       DAO u = new DAO();
        CustomerDAO o = new CustomerDAO();
        int indexPage = Integer.parseInt(request.getParameter("index"));
        int productId = Integer.parseInt(request.getParameter("productid"));

        List<ReviewList> rl = o.getReviewByProductId(productId, indexPage);
        request.setAttribute("review", rl);
        request.getRequestDispatcher("reviews.jsp").forward(request, response);
    } 

}
