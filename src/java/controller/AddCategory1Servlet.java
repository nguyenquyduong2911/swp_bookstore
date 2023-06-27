/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AdminDAO;
import entity.Category;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author Admin
 */
public class AddCategory1Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        request.getRequestDispatcher("addcategory.jsp").forward(request, response);
    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter pr = response.getWriter();
    
    String catid1 = request.getParameter("catid").trim();
    String merid1 = request.getParameter("merid").trim();
    String catname = request.getParameter("catname").trim();

    try {
        int catid = Integer.parseInt(catid1);
        int merid = Integer.parseInt(merid1);
        
        Category x = new Category(catid, catname, merid);
        AdminDAO dao = new AdminDAO();
        boolean check = dao.addCategory(x);
        
        if (check) {
            pr.print("Success");
        } else {
            pr.print("Failed to add category");
        }
    } catch (NumberFormatException e) {
        pr.print("Invalid ID or Merchant ID");
    }
}
}
