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
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Admin
 */
public class ForgotMailServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter pr = response.getWriter();
    String email = request.getParameter("email");
    CustomerDAO dao = new CustomerDAO();
    Account account = dao.getEmail(email);
    if (account == null) {
        // Email does not exist
        request.setAttribute("emailNotExist", true);
        request.getRequestDispatcher("forgotpass.jsp").forward(request, response);
        return;
    }
    request.getSession().setAttribute("currmail",email);
    // Generate verification code
    String code = generateVerificationCode(6);
    request.getSession().setAttribute("code1", code);

    // Send verification email
    sendVerificationEmail(email, code);

    // Redirect to the verification page
    response.sendRedirect("verify_password.jsp");


    }
       private String generateVerificationCode(int length) {
        String uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lowcase = uppercase.toLowerCase();
        String digit = "0123456789";
        String charset = uppercase + lowcase + digit;
        Random rand = new Random();
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int index = rand.nextInt(charset.length());
            char randomChar = charset.charAt(index);
            sb.append(randomChar);
        }

        String randomString = sb.toString();
       return randomString ; 
    }
       private void sendVerificationEmail(String toEmail, String code) {
    String username = "ducthongngo513@gmail.com"; // Your email address
    String password = "otuspmyhyncfhrdc"; // Your email password

    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");

    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
        }
    });

    // Execute the email sending task in a separate thread
    ExecutorService executor = Executors.newSingleThreadExecutor();
    executor.submit(() -> {
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("New Password");
            message.setText(code);

            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    });

    // Shutdown the executor service to release resources
    executor.shutdown();
}

  
}


    

