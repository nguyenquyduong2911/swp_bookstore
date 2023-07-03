<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link href="css/addcss.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Add Book</h1>

        <form method="POST" action="addbook">
             <div class="form-group">
                <label for="id">Id:</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="supplier">Supplier:</label>
                <input type="text" class="form-control" id="supplier" name="supplier" required>
            </div>
            <div class="form-group">
                <label for="publisher">Publisher:</label>
                <input type="text" class="form-control" id="publisher" name="publisher" required>
            </div>
            <div class="form-group">
                <label for="coverForm">Cover Form:</label>
                <input type="text" class="form-control" id="coverForm" name="coverform" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" class="form-control" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="quantity">Quantity:</label>
                <input type="text" class="form-control" id="quantity" name="quantity" required>
            </div>
            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" class="form-control" id="author" name="author" required>
            </div>
            <div class="form-group">
                <label for="yearPublish">Year of Publish:</label>
                <input type="text" class="form-control" id="yearPublish" name="yearpublish" required>
            </div>
            <div class="form-group">
                <label for="language">Language:</label>
                <input type="text" class="form-control" id="language" name="language" required>
            </div>
            <div class="form-group">
                <label for="weight">Weight:</label>
                <input type="text" class="form-control" id="weight" name="weight" required>
            </div>
            <div class="form-group">
                <label for="packageSize">Package Size:</label>
                <input type="text" class="form-control" id="packageSize" name="packagesize" required>
            </div>
            <div class="form-group">
                <label for="numPage">Number of Pages:</label>
                <input type="text" class="form-control" id="numPage" name="numpage" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="image">Image:</label>
                <input type="text " class="form-control" id="image" name="image" required>
            </div>
        <div class="form-group">
    <label for="categoryID">Category:</label>
    <select class="form-control" id="categoryID" name="categoryID" required>
        <option value="">Select a category</option>
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
                <label for="genreID">Genre ID:</label>
                <input type="number" class="form-control" id="genreID" name="genreID" required>
            </div>
            <div class="form-group">
                <label for="genreID">Book image ID:</label>
                <input type="number" class="form-control" id="genreID" name="bookimgid" required>
            </div>
            <div class="form-group">
                <label for="statusProduct">Product Status:</label>
                <input type="number" class="form-control" id="statusProduct" name="statusproduct" required>
            </div>

            <input type="submit" value="Add book">  <button><a href="admin.jsp">Go back to admin page</a></button>
        </form>
        
    </div>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
