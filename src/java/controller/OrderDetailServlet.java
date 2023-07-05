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
@WebServlet(name="OrderDetailServlet", urlPatterns={"/orderdetail"})
public class OrderDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
    int id = Integer.parseInt(request.getParameter("id"));
    int oid=Integer.parseInt(request.getParameter("oid"));
    CustomerDAO dao = new CustomerDAO();
     ArrayList<OrderDetail> b = dao.getOrderDetail(id,oid);
   

    if (b == null) {
        pr.print("null");
    } else {
        request.setAttribute("orderdetail", b);
       request.getRequestDispatcher("orderdetail.jsp").forward(request, response);
}
    }
  


}
