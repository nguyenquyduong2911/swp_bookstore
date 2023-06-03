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
import dal.*;


/**
 *
 * @author Admin
 */
public class RegisterServlet extends HttpServlet {

  
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String pass,name,email;
        
        pass=request.getParameter("password");
        name=request.getParameter("name");
        email=request.getParameter("email");
        
        Account x = new Account(pass, name, email);
        DAO dao = new DAO();
        boolean check=dao.addAccount(x);
        if(check){
            pr.print("Success");
        }
        else{
            pr.print("Failed");
        }
       
        
        
        
    }}