<%@ page import="java.sql.*" %>      
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cập nhật thông tin sách</title>
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
    <h1>Cập nhật thông tin sách</h1>
    <form action="updatebook" method="post">
        <%-- Retrieve the book object from the request --%>
        <% book_detail book = (book_detail) request.getAttribute("editbook"); %>
        <input type="hidden" name="id" value="<%= book.getId() %>">
        
        <label for="name">Tên sách:</label>
        <input type="text" name="name" id="name" value="<%= book.getName() %>">
        
        <label for="supplier">Nhà cung cấp:</label>
        <input type="text" name="supplier" id="supplier" value="<%= book.getSupplier() %>">
        
        <label for="publisher">Nhà xuất bản:</label>
        <input type="text" name="publisher" id="publisher" value="<%= book.getPublisher() %>">
        
         <label for="coverform">Bìa:</label>
        <input type="text" name="coverform" id="coverform" value="<%= book.getCover_form() %>">
        
        <label for="price">Giá:</label>
        <input type="text" name="price" id="price" value="<%= book.getPrice() %>">
        
        <label for="quantity">Số lượng:</label>
        <input type="number" name="quantity" id="quantity" value="<%= book.getQuantity() %>">
        
        <label for="author">Tác giả:</label>
        <input type="text" name="author" id="author" value="<%= book.getAuthor() %>">
        
        <label for="year_publish">Năm xuất bản:</label>
        <input type="text" name="year_publish" id="year_publish" value="<%= book.getYear_publish() %>">
        
        <label for="language">Ngôn ngữ:</label>
        <input type="text" name="language" id="language" value="<%= book.getLanguage() %>">
        
        <label for="weight">Khối lượng:</label>
        <input type="text" name="weight" id="weight"value="<%= book.getWeight() %>">
        
        <label for="psize">Kích thước:</label>
        <input type="text" name="psize" id="psize" value="<%= book.getPackage_size() %>">
        
        <label for="numpage">Số trang:</label>
        <input type="text" name="numpage" id="numpage"value="<%= book.getNum_page() %>">
        
        <label for="description">Mô tả:</label>
        <textarea name="description" id="description"><%= book.getDescription() %></textarea>
        
        <label for="image">Hình ảnh:</label>
        <input type="text" name="image" id="image" value="<%= book.getImage() %>"><br>
        <div class="center-button">
        <input type="submit" value="Cập nhật thông tin sách">
    </div>
    </form>
        </div>
</body>
</html>
