/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AdminDAO;
import dal.CustomerDAO;
import dal.DAO;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;


/**
 *
 * @author Admin
 */
public class DeleteBookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        int id=Integer.parseInt(request.getParameter("id"));
        AdminDAO dao = new AdminDAO();
        boolean isDeleted=dao.deleteBookDetail(id);
        if(isDeleted){
            response.sendRedirect("listbook");
        }
        else{
            pr.println("Delete Book");
        }
    } } 



    

