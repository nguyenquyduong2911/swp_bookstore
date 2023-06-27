/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.CustomerDAO;
import entity.Account;
import entity.acc_detail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author taote
 */
@WebServlet(name="edit_accountdetail", urlPatterns={"/edit_accountdetail"})
public class edit_accountdetail extends HttpServlet {
   
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
            out.println("<title>Servlet edit_accountdetail</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet edit_accountdetail at " + request.getContextPath () + "</h1>");
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
   
         CustomerDAO dao = new CustomerDAO();
        String rawid = request.getParameter("id");
        int id = Integer.parseInt(rawid);
        
        acc_detail a = dao .getAccountById(id);
        request.setAttribute("a", a);
        request.getRequestDispatcher("edit_accountdetail.jsp").forward(request, response);
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
       
    CustomerDAO dao = new CustomerDAO();
 Account x = (Account) request.getSession().getAttribute("curr");
    String rawid = request.getParameter("id");
    int id = 0; // Default value if parsing fails
    if (rawid != null && !rawid.isEmpty()) {
        id = Integer.parseInt(rawid);
    }

    String firstname = request.getParameter("first_name");
    String lastname = request.getParameter("last_name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String dob = request.getParameter("dob");

    String rawgender = request.getParameter("gender");
    int gender = 0; // Default value if parsing fails
    if (rawgender != null && !rawgender.isEmpty()) {
        gender = Integer.parseInt(rawgender);
    }
//    String displayname = request.getParameter("displayname");
//    x.setName(displayname);
//    String dpName = x.getName();
    acc_detail ac = new acc_detail(firstname, lastname, phone, email, gender, dob);
    dao.editAccountById(id, ac);
    ac = dao .getAccountById(id);
        request.setAttribute("a", ac);
        request.getRequestDispatcher("edit_accountdetail.jsp").forward(request, response);
    
   
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
