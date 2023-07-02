/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.CustomerDAO;
import dal.DAO;
import entity.CategoryGenreInfo;
import entity.CustomerReview;
import entity.ReviewList;
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
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author taote
 */
@WebServlet(name="CusReview", urlPatterns={"/review"})
public class CusReview extends HttpServlet {
   
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
            out.println("<title>Servlet CusReview</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CusReview at " + request.getContextPath () + "</h1>");
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
    public static void main(String[] args) {
        LocalDate curDate = java.time.LocalDate.now();
        System.out.println(curDate);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
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
        LocalDate curDate = java.time.LocalDate.now();
        String rawcid = request.getParameter("cid");
       int cid = Integer.parseInt(rawcid);
        String review = request.getParameter("review");
        String date = curDate.toString();      
        String rawopinion = request.getParameter("recommendation");
        int opinion = Integer.parseInt(rawopinion);
        String rawpid = request.getParameter("pid");
        int pid = Integer.parseInt(rawcid);
        
        CustomerReview cr = new CustomerReview(cid, review, date, opinion,pid);
        CustomerDAO  dao = new CustomerDAO();
        try {
            dao.insertReview(cr);
        } catch (SQLException ex) {
            Logger.getLogger(CusReview.class.getName()).log(Level.SEVERE, null, ex);
        }
      DAO u = new DAO();
  
        book_detail bd = u.getBookById(pid);
        request.setAttribute("bd", bd);
           // Retrieve the Cart object from the session
        
          
        bookImage bm = u.getBookImageById(pid);
        request.setAttribute("bm", bm);

        CategoryGenreInfo cgi = u.getCategoryGenreInfoByBookId(pid);

        List<book_show> itemList = u.getBooksByCategoryOrGenre(cgi.getCategoryId(), cgi.getGenreId(), pid);
        request.setAttribute("itemList", itemList);
         String index = request.getParameter("index");
            if (index == null) {
                index = "1";
            }
        CustomerDAO o = new CustomerDAO();
         int indexPage = Integer.parseInt(index);
            List<ReviewList> rl = o.getReviewByProductId(pid, indexPage);
            request.setAttribute("review", rl);
            request.setAttribute("indexPage", indexPage);
            int getPageCount = o.GetNumberPageReview(pid);
            request.setAttribute("pageCount", getPageCount);
        request.getRequestDispatcher("product-detail.jsp").forward(request, response);
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
