/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import entity.Book_Cart;
import entity.Cart;
import entity.CategoryGenreInfo;
import entity.Item;
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
import java.util.List;

/**
 *
 * @author taote
 */
@WebServlet(name="Cart", urlPatterns={"/cart"})
public class AddToCart extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Cart</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Cart at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       processRequest(request, response);
       
    } 
    
    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
          HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        //co roi\
        if(o!=null){
            cart = (Cart)o;
        }else{
            cart = new Cart();
        }
        String tnum = request.getParameter("quantity");
        String tid = request.getParameter("id");
        int num,id;
     
            num = Integer.parseInt(tnum);
            id = Integer.parseInt(tid);
            DAO u = new DAO();
            Book_Cart b = u.getProductbyID(id);
            double price = b.getPrice();
            Item t = new Item(b, num, price);
            cart.addItem(t);
       
        List<Item> list = cart.getItem();
        
        
        DAO d = new DAO();
//        String bookID = request.getParameter("productid");
//        int productid = Integer.parseInt(bookID);
         book_detail bd = d.getBookById(id);
         request.setAttribute("bd", bd);
         int quantity =bd.getQuantity()- cart.getQuantityById(id);
                 request.setAttribute("qtt", quantity);
         bookImage bm = d.getBookImageById(id);
          request.setAttribute("bm", bm);
          
          CategoryGenreInfo cgi = d.getCategoryGenreInfoByBookId(id);
          
           List<book_show> itemList = d.getBooksByCategoryOrGenre(cgi.getCategoryId(), cgi.getGenreId(),id);
          request.setAttribute("itemList", itemList);
//         request.getRequestDispatcher("product-detail.jsp").forward(request, response);
        
       session.setAttribute("cart", cart);
        session.setAttribute("size", list.size());   
//request.getSession().setAttribute("cart", cart);
//request.getSession().setAttribute("list", list);
      request.getRequestDispatcher("product-detail.jsp").forward(request, response);
//              response.sendRedirect("product-detail.jsp");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
