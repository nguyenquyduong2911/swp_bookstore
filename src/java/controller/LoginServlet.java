/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
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
        CustomerDAO dao= new CustomerDAO();
        Account u = dao.getAccount(email, pass);
        request.getSession().setAttribute("curr", u);
        if(u==null){
            
        }
        else{
            if(u.getRole().equals("admin")){
                response.sendRedirect("admin.jsp");
            }
            else{
                  response.sendRedirect("home");
            }
            
           
 
       
        
      


            
            
            
        }
        
        
       
        
        
        
    }}