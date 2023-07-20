/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import entity.*;

/**
 *
 * @author Admin
 */
public class ApproveServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        int orderId = Integer.parseInt(request.getParameter("id"));
        SellerDAO dao = new SellerDAO();
        dao.updateOrderStatus(orderId, 2);
        response.sendRedirect("pendingorder");
    }}



