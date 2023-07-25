<%-- 
    Document   : addcategory
    Created on : Jun 20, 2023, 5:08:29 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm danh mục</title>
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
        width: 50%;
        margin: 0 auto; 
        margin-top:2%;
    }
    .center-button {
        text-align: center;
        margin-top:2%;
    }
    
    </style>
    </head>
    <body>
        <div class="container form-container">
            <h1>Thêm danh mục</h1>
        <form action="addc1" method="Post">
        <div class="form-group">
                <label for="catid">Id danh mục:</label>
                <input type="text" class="form-control" id="catid" name="catid" required>
            </div>
             <div class="form-group">
                <label for="catname">Tên:</label>
                <input type="text" class="form-control" id="catname" name="catname" required>
            </div>
             <div class="form-group">
                <label for="merid">Id nhóm danh mục:</label>
                <select class="form-control" id="merid" name="merid" required>
        <option value="">Chọn nhóm danh mục</option>
        <% 
            DAO dao = new DAO();
            ArrayList<String> merList = (ArrayList<String>) dao.getMerchName();
            for (String abc : merList) {
        %>
        <option value="<%= dao.getMerID(abc) %>"><%= abc %></option>
        <% } %>
    </select>
            </div>
           <div class="center-button">
        <input type="submit" value="Thêm danh mục">
    </div>
        </div>
    </form> 
        
    </body>
   
</html>
