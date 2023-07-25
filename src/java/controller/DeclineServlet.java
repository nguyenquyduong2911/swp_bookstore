package controller;

import dal.SellerDAO;
import dal.OrderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;



public class DeclineServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        int orderId = Integer.parseInt(request.getParameter("id")); 
        int id = Integer.parseInt(request.getParameter("1id"));
        
        SellerDAO sellerDAO = new SellerDAO();

        if (id == -1) {
            int cid = Integer.parseInt(request.getParameter("cid")); 
            OrderDAO orderDAO = new OrderDAO();
            orderDAO.cancelOrder(orderId);
            response.sendRedirect("ordersum?id=" + cid);
        } else {
            OrderDAO orderDAO = new OrderDAO();
            orderDAO.cancelOrder(orderId);
            sellerDAO.updateOrderStatus(orderId, 4);
            response.sendRedirect("pendingorder"); 
        }
    }
}
