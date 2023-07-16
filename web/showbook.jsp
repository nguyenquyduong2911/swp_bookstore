<%@ page import="java.sql.*" %>      
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book Details</title>
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
    <h1>Book Details</h1>
    <div class="table-responsive">
    <table class="table-bordered">
        <tr>
            <th>Id</th>
            <th>Tên</th>
            <th>Nhà cung cấp</th>
            <th>Nhà xuất bản</th>           
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Tác giả</th>
            <th>Năm xuất bản</th>       
            <th>Mô tả</th>
            <th>Trạng thái</th>
            <th style="color:red;">Chỉnh sửa</th>
           
        </tr>
        <% 
            List<book_detail> bookList = (List<book_detail>) request.getAttribute("bookdetail");
            for (book_detail book : bookList) {
        %>
            <tr>
                <td><%= book.getId() %></td>
                <td><%= book.getName() %></td>
                <td><%= book.getSupplier() %></td>
                <td><%= book.getPublisher() %></td>
                <td><%= book.getPrice() %></td>
                <td><%= book.getQuantity() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getYear_publish() %></td>
                <td><%= book.getDescription()%></td>
                <td><%= book.getStatus_product() == 1 ? "Hết hàng" : "Còn hàng" %></td>
                <td><a href="editbook?id=<%= book.getId() %>">Sửa</a> || <a href="deletebook?id=<%=book.getId()%>">Xóa</a></td>
                
                
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
