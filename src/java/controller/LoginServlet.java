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
import java.security.SecureRandom;
import java.util.Base64;
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
    String email, pass;
    email = request.getParameter("email");
    pass = request.getParameter("pass");

    CustomerDAO dao = new CustomerDAO();
    Account u = dao.getAccount(email, pass);
    request.getSession().setAttribute("curr", u);

    if (u == null) {
        request.setAttribute("ls", false);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } else {
        if (u.getRole().equals("admin")) {
            response.sendRedirect("admin.jsp");
        } else {
            boolean rememberMe = request.getParameter("remember") != null;
            if (rememberMe) {
                Cookie emailCookie = new Cookie("email", email);
                Cookie passwordCookie = new Cookie("password", pass);
                // Set the cookie expiration time (e.g., 30 days)
                emailCookie.setMaxAge(30 * 24 * 60 * 60);
                passwordCookie.setMaxAge(30 * 24 * 60 * 60);
                // Add the cookies to the response
                response.addCookie(emailCookie);
                response.addCookie(passwordCookie);
            }
            response.sendRedirect("home");
        }
    }
}


    }

