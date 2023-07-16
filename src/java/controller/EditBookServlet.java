/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import entity.*;

/**
 *
 * @author Admin
 */
public class EditBookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
       int bookId = Integer.parseInt(request.getParameter("id"));
        
        // Retrieve the book details from the database
        AdminDAO dao = new AdminDAO();
        book_detail book = dao.getBookDetailById(bookId);
        
        // Set the book object as a request attribute
        request.setAttribute("editbook", book);
        
        // Forward the request to the edit book page or any other appropriate page
        request.getRequestDispatcher("editbook.jsp").forward(request, response);
    }}



