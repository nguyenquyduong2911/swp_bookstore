package controller;

import dal.*;
import entity.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

public class UpdateBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        // Retrieve the form data
        int bookId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String supplier = request.getParameter("supplier");
        String publisher = request.getParameter("publisher");
        String coverForm = request.getParameter("coverform");
        String price = request.getParameter("price");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String author = request.getParameter("author");
        String yearPublish = request.getParameter("year_publish");
        String language = request.getParameter("language");
        String weight = request.getParameter("weight");
        String packageSize = request.getParameter("psize");
        int numPages = Integer.parseInt(request.getParameter("numpage"));
        String description = request.getParameter("description");
        String image = request.getParameter("image");
        

        book_detail book = new book_detail(bookId,name, supplier, publisher, coverForm, price, quantity, author, yearPublish, language, weight, packageSize, numPages, description, image);
        pr.println("bookId: " + bookId);
pr.println("name: " + name);
pr.println("supplier: " + supplier);
pr.println("publisher: " + publisher);
pr.println("coverForm: " + coverForm);
pr.println("price: " + price);
pr.println("quantity: " + quantity);
pr.println("author: " + author);
pr.println("yearPublish: " + yearPublish);
pr.println("language: " + language);
pr.println("weight: " + weight);
pr.println("packageSize: " + packageSize);
pr.println("numPages: " + numPages);
pr.println("description: " + description);
pr.println("image: " + image);

        AdminDAO dao = new AdminDAO();
        boolean isUpdated = dao.updateBookDetail(book);

        if (isUpdated) {

            response.sendRedirect("bookdetails?id=" + bookId);
        } else {

            response.getWriter().println("Failed to update book details.");
        }
    }
}
