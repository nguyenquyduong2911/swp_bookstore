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
    table {
        width: 100%;
        max-width: 100vw;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 8px;
        text-align: left;
        vertical-align: top;
        border: 1px solid #ddd;
    }

    th {
        background-color: #f1f1f1;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f5f5f5;
    }
</style>

   
</head>
<body>
    <%int id = (int)request.getAttribute("idacc");%>
    <div>
    <h1>Edit Role</h1>
    <form action="changerole">
        Id:<input type="text" name="id" value="<%=id%>">
        Role:<input type="text" name="role">
        <input type="submit" value="Change role">
        
        
    </form>
   
    </div>
    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
