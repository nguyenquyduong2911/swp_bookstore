<%@ page import="java.sql.*" %>      
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Book Details</title>
    <style>
        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="number"] {
            width: 300px;
            padding: 5px;
            font-size: 14px;
        }

        textarea {
            width: 300px;
            height: 100px;
            padding: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Edit Book Details</h1>
    <form action="updatebook" method="post">
        <%-- Retrieve the book object from the request --%>
        <% book_detail book = (book_detail) request.getAttribute("editbook"); %>
        <input type="hidden" name="id" value="<%= book.getId() %>">
        
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="<%= book.getName() %>">
        
        <label for="supplier">Supplier:</label>
        <input type="text" name="supplier" id="supplier" value="<%= book.getSupplier() %>">
        
        <label for="publisher">Publisher:</label>
        <input type="text" name="publisher" id="publisher" value="<%= book.getPublisher() %>">
        
         <label for="coverform">Cover form:</label>
        <input type="text" name="coverform" id="coverform" value="<%= book.getCover_form() %>">
        
        <label for="price">Price:</label>
        <input type="text" name="price" id="price" value="<%= book.getPrice() %>">
        
        <label for="quantity">Quantity:</label>
        <input type="number" name="quantity" id="quantity" value="<%= book.getQuantity() %>">
        
        <label for="author">Author:</label>
        <input type="text" name="author" id="author" value="<%= book.getAuthor() %>">
        
        <label for="year_publish">Year of Publication:</label>
        <input type="text" name="year_publish" id="year_publish" value="<%= book.getYear_publish() %>">
        
        <label for="language">Language:</label>
        <input type="text" name="language" id="language" value="<%= book.getLanguage() %>">
        
        <label for="weight">Weight:</label>
        <input type="text" name="weight" id="weight"value="<%= book.getWeight() %>">
        
        <label for="psize">Package size:</label>
        <input type="text" name="psize" id="psize" value="<%= book.getPackage_size() %>">
        
        <label for="numpage">Num pages:</label>
        <input type="text" name="numpage" id="numpage"value="<%= book.getNum_page() %>">
        
        <label for="description">Description:</label>
        <textarea name="description" id="description"><%= book.getDescription() %></textarea>
        
        <label for="image">Image:</label>
        <input type="text" name="image" id="image" value="<%= book.getImage() %>">
        
        <input type="submit" value="Update">
    </form>
</body>
</html>
