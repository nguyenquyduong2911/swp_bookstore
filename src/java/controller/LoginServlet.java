/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;




import entity.*;
import java.util.HashSet;


/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String email,pass;
        String logResult;
        email=request.getParameter("email");
        pass=request.getParameter("pass");
        DAO dao= new DAO();
        Account u = dao.getAccount(email, pass);
        request.getSession().setAttribute("curr", u);
        if(u==null){
            logResult="Login Failed";
        }
        else{
            logResult="Login succesful!";
            
           
 
       
        
        response.sendRedirect("home");


            
            
            
        }
        
        
       
        
        
        
    }}