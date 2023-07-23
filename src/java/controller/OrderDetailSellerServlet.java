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
import java.util.ArrayList;


/**
 *
 * @author Admin
 */
public class OrderDetailSellerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
    int oid=Integer.parseInt(request.getParameter("oid"));
    SellerDAO dao = new SellerDAO();
     ArrayList<OrderDetail> b = dao.getOrderDetail(oid);
   

    if (b == null) {
        pr.print("null");
    } else {
        request.setAttribute("orderdetail", b);
       request.getRequestDispatcher("orderdetailseller.jsp").forward(request, response);
}
    }
  


}
