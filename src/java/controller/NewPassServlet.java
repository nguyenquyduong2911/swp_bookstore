/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;
import dal.CustomerDAO;
import entity.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;



/**
 *
 * @author Admin
 */
public class NewPassServlet extends HttpServlet {
 @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    PrintWriter pr = response.getWriter();
    String pass = request.getParameter("newpass");
    String repass = request.getParameter("renewpass");
    String email = (String) request.getSession().getAttribute("currmail");

    if (!pass.equals(repass)) {
        request.setAttribute("notmatch", true);
        request.getRequestDispatcher("resetpass.jsp").forward(request, response);
    } else {
        try {
            CustomerDAO dao = new CustomerDAO();
            Account x = dao.getAccByEmail(email);
            int id = x.getIdAccount();
            boolean updated = dao.updateAccountPassword(id, repass);
                response.sendRedirect("login.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}


  }