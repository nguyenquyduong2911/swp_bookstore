<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thêm sách</title>
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
    }
    .center-button {
        text-align: center;
        margin-top:2%;
    }
    
    </style>
</head>
<body>
    <div class="container form-container">
        <h1>Thêm sách</h1>

        <form method="POST" action="addbook">
             <div class="form-group">
                <label for="id">Id:</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="name">Tên sách:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="supplier">Nhà cung cấp:</label>
                <input type="text" class="form-control" id="supplier" name="supplier" required>
            </div>
            <div class="form-group">
                <label for="publisher">Nhà xuất bản:</label>
                <input type="text" class="form-control" id="publisher" name="publisher" required>
            </div>
            <div class="form-group">
                <label for="coverForm">Bìa:</label>
                <input type="text" class="form-control" id="coverForm" name="coverform" required>
            </div>
            <div class="form-group">
                <label for="price">Giá:</label>
                <input type="text" class="form-control" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="quantity">Số lượng:</label>
                <input type="text" class="form-control" id="quantity" name="quantity" required>
            </div>
            <div class="form-group">
                <label for="author">Tác giả:</label>
                <input type="text" class="form-control" id="author" name="author" required>
            </div>
            <div class="form-group">
                <label for="yearPublish">Năm xuất bản:</label>
                <input type="text" class="form-control" id="yearPublish" name="yearpublish" required>
            </div>
            <div class="form-group">
                <label for="language">Ngôn ngữ:</label>
                <input type="text" class="form-control" id="language" name="language" required>
            </div>
            <div class="form-group">
                <label for="weight">Khối lượng:</label>
                <input type="text" class="form-control" id="weight" name="weight" required>
            </div>
            <div class="form-group">
                <label for="packageSize">Kích thước:</label>
                <input type="text" class="form-control" id="packageSize" name="packagesize" required>
            </div>
            <div class="form-group">
                <label for="numPage">Số trang:</label>
                <input type="text" class="form-control" id="numPage" name="numpage" required>
            </div>
            <div class="form-group">
                <label for="description">Mô tả:</label>
                <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="image">Hình ảnh:</label>
                <input type="text " class="form-control" id="image" name="image" required>
            </div>
        <div class="form-group">
    <label for="categoryID">Thể loại:</label>
    <select class="form-control" id="categoryID" name="categoryID" required>
        <option value="">Chọn thể loại</option>
        <% 
            AdminDAO dao = new AdminDAO();
            ArrayList<String> catList = dao.getCatName(); // Call the method to retrieve the category names
            for (String category : catList) {
        %>
        <option value="<%= category %>"><%= category %></option>
        <% } %>
    </select>
</div>

            <div class="form-group">
                <label for="genreID">ID thể loại:</label>
                <input type="number" class="form-control" id="genreID" name="genreID" required>
            </div>
            <div class="form-group">
                <label for="genreID">ID hình ảnh:</label>
                <input type="number" class="form-control" id="genreID" name="bookimgid" required>
            </div>
            <div class="form-group">
                <label for="statusProduct">Trạng thái:</label>
                <input type="number" class="form-control" id="statusProduct" name="statusproduct" required>
            </div>

            <div class="center-button">
        <input type="submit" value="Thêm sách">
    </div>
        </form>
        
    </div>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
