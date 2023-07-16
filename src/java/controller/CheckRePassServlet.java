/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;
import dal.CustomerDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




/**
 *
 * @author Admin
 */
public class CheckRePassServlet extends HttpServlet {
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String userCode = request.getParameter("code");
    PrintWriter pr = response.getWriter();
    String verificationCode = (String) request.getSession().getAttribute("code1");
    
    if (verificationCode != null && verificationCode.equals(userCode)) {
        response.sendRedirect("resetpass.jsp");   
    } else {
       pr.println("Verification code is incorrect!");
       
        
    }
}

  }