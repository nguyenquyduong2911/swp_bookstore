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
        int cid = Integer.parseInt(request.getParameter("cid")); 
        SellerDAO sellerDAO = new SellerDAO();

        if (id == -1) {
            // If id == -1, it means it's a customer order, update the order status to 2 (cancelled)
            sellerDAO.updateOrderStatus(orderId, 2);

            // Cancel the order and increase the quantity back in the bookdetail table
            OrderDAO orderDAO = new OrderDAO();
            orderDAO.cancelOrder(orderId);

            // Redirect to ordersum page
            response.sendRedirect("ordersum?id=" + cid);
        } else {
            // If id != -1, it means it's a pending order, update the order status to 4 (cancelled)
            sellerDAO.updateOrderStatus(orderId, 4);

            // Redirect to pendingorder page
            response.sendRedirect("pendingorder"); 
        }
    }
}
