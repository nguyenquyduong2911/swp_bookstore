/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dal.OrderDAO;
import entity.Account;
import entity.Book_Cart;
import entity.Cart;
import entity.CategoryGenreInfo;
import entity.Item;
import entity.OrderCustomerInfo;
import entity.bookImage;
import entity.book_detail;
import entity.book_show;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author taote
 */
@WebServlet(name = "CheckOut", urlPatterns = {"/checkout"})
public class CheckOut extends HttpServlet {

    
    public static void main(String[] args) {
        System.out.println("địt thàng cụ mày");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        //co roi\
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }

        Account ac = null;
        Object a = session.getAttribute("curr");
        if (a != null) {
            ac = (Account) a;
            OrderDAO odb = new OrderDAO();
           
                request.setCharacterEncoding("UTF-8");
          
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String city = request.getParameter("city");
            String district = request.getParameter("district");
            String ward = request.getParameter("ward");
            String delivery = request.getParameter("delivery");
            String message = request.getParameter("message");

            OrderCustomerInfo oci = new OrderCustomerInfo(name, email, phone, city, district, ward, delivery, message);
//            try ( PrintWriter out = response.getWriter()) {
//                /* TODO output your page here. You may use following sample code. */
//                out.println("<!DOCTYPE html>");
//                out.println("<html>");
//                out.println("<head>");
//                out.println("<title>Servlet CheckOut</title>");
//                out.println("</head>");
//                out.println("<body>");
//                out.println("<h1>Servlet CheckOut at " + oci + "</h1>");
//                out.println("</body>");
//                out.println("</html>");
//            }
               try {
                   odb.addOrder(ac, cart,oci);
               } catch (SQLException ex) {
                   Logger.getLogger(CheckOut.class.getName()).log(Level.SEVERE, null, ex);
               }
               session.removeAttribute("cart");
               session.setAttribute("size", 0);
               response.sendRedirect("product");    

        } else {
            response.sendRedirect("login.jsp");
        }
    } 

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
