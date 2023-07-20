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
    <div>
    <h1>User List</h1>
    <div class="table-responsive">
    <table class="table-bordered">
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Tên người dùng</th>  
            <th>Quyền</th>
            <th style="color:red;">Chỉnh sửa</th>
           
        </tr>
        <% 
            List<Account> accList = (List<Account>) request.getAttribute("userlist");
            for (Account acc : accList) {
        %>
            <tr>
                <td><%= acc.getIdAccount() %></td>
                <td><%= acc.getEmail() %></td>
                <td><%= acc.getName() %></td>
                <td><%=acc.getRole()%></td>
                <td><a href="updaterole?id=<%=acc.getIdAccount()%>">Sửa quyền</a></td>
                
                
                
            </tr>
        <% 
            }
        %>
    </table>
   </div>
    </div>
    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
