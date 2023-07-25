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
public class DeclineServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        int orderId = Integer.parseInt(request.getParameter("id")); 
        int id=Integer.parseInt(request.getParameter("1id"));
        int cid=Integer.parseInt(request.getParameter("cid")); 
        SellerDAO dao = new SellerDAO();
//        pr.print(request.getParameter("cid"));
        
        if(id==-1){
            dao.updateOrderStatus(orderId, 2);
            response.sendRedirect("ordersum?id="+cid);
        }
        else{
            dao.updateOrderStatus(orderId, 4);
           response.sendRedirect("pendingorder"); 
        }
        
    }}

