/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.*;
import entity.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


/**
 *
 * @author Admin
 */

public class OrderHistoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
    int id = Integer.parseInt(request.getParameter("id"));
    CustomerDAO dao = new CustomerDAO();
     ArrayList<OrderHistory> b = dao.getOrderHistory(id);
   

    if (b == null) {
        pr.print("null");
    } else {
        request.setAttribute("orderlist", b);
       request.getRequestDispatcher("orderhistory.jsp").forward(request, response);
}
    }
  


}
