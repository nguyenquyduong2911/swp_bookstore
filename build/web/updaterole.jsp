<%@ page import="java.sql.*" %>      
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
         <link href="css/addcss.css" rel="stylesheet">
<style>
        body{
            font-family: 'Roboto', sans-serif;
    font-size: 14px;
    text-decoration: none;
    text-transform: uppercase;
        }
        h1{
            font-family: 'Roboto', sans-serif;
    font-size: 18px;
    text-decoration: none;
    text-transform: uppercase;
        }
        .form-container {
        width: 50%; /* Adjust the width as needed */
        margin: 0 auto; /* This centers the container horizontally */
    }
    .center-button {
        text-align: center;
        margin-top:2%;
    }
    
    </style>

   
</head>
<body>
    <div class="container form-container">
    <%int id = (int)request.getAttribute("idacc");%>
    <div>
    <h1>Sửa quyền</h1>
    <form action="changerole">
        Id:<input type="text" name="id" value="<%=id%>">
        Role:<input type="text" name="role" placeholder="user or seller">
        <div class="center-button">
        <input type="submit" value="Sửa quyền">
    </div>
        
        
    </form>
   
    </div>
        </div>
    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
