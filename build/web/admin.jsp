<%-- 
    Document   : admin
    Created on : Jun 12, 2023, 1:51:52 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% if(request.getSession().getAttribute("curr")==null)
          out.println("<h1 style=\"color:red\">Access denied<h1>");
          else{
          %>
         
       
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
    </head>
<body>
    <h1>Hello admin</h1>
    <ul class="sidebar">
        <li><a href="addbook">Add book</a></li>
        <li><a href="listbook">Show book</a></li>
        <li><a href="addc1">Add category</a></li>
        <li><a href="url">Modify book</a></li>
        <li><a href="url">Modify category</a></li>
        <li><a href="url">Show user</a></li>
        <li><a href="url">Delete user</a></li>
        <li><a href="url">Modify user role</a></li>
    </ul>
</body>
<% } %>

</html>
