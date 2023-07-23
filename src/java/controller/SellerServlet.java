/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;


import dal.*;
import entity.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



public class SellerServlet extends HttpServlet {
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        AdminDAO dao = new AdminDAO();
        int seller=dao.getTotalUser("seller");
        int user=dao.getTotalUser("user");
        int order=dao.getTotalOrder();
        request.setAttribute("seller", seller);
        request.setAttribute("user", user);
        request.setAttribute("order", order);
        request.getRequestDispatcher("seller.jsp").forward(request, response);
        
    }
   
}
