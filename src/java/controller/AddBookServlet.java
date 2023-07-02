/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.*;
import entity.*;
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
public class AddBookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        request.getRequestDispatcher("addbook.jsp").forward(request, response);
    }

   @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter pr = response.getWriter();

    // Retrieve the book details from the request parameters
    int bookid = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String supplier = request.getParameter("supplier");
    String publisher = request.getParameter("publisher");
    String coverForm = request.getParameter("coverform");
    String price = request.getParameter("price");
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    String author = request.getParameter("author");
    String yearPublish = request.getParameter("yearpublish");
    String language = request.getParameter("language");
    String weight = request.getParameter("weight");
    String packageSize = request.getParameter("packagesize");
    int numPage = Integer.parseInt(request.getParameter("numpage"));
    String description = request.getParameter("description");
    String image = request.getParameter("image");
    int categoryId = Integer.parseInt(request.getParameter("categoryID"));
    int genreId = Integer.parseInt(request.getParameter("genreID"));
    int bookimgId = Integer.parseInt(request.getParameter("bookimgid"));
    int statusProduct = Integer.parseInt(request.getParameter("statusproduct"));


    book_detail newBook = new book_detail(bookid, name, supplier, publisher, coverForm, price, quantity,
            author, yearPublish, language, weight, packageSize, numPage, description, image,
            categoryId, genreId, bookimgId, statusProduct);
    AdminDAO dao = new AdminDAO();  
    boolean check=dao.addBookdetail(newBook);
    if(check){
        pr.println("true");
    }
    else{
        pr.print("false");
    }

}   


}
