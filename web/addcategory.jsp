<%-- 
    Document   : addcategory
    Created on : Jun 20, 2023, 5:08:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add category</title>
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
            <h1>Add category</h1>
        <form action="addc1" method="Post">
        <div class="form-group">
                <label for="catid">Category Id:</label>
                <input type="text" class="form-control" id="catid" name="catid" required>
            </div>
             <div class="form-group">
                <label for="catname">Category name:</label>
                <input type="text" class="form-control" id="catname" name="catname" required>
            </div>
             <div class="form-group">
                <label for="merid">Merchandise Id:</label>
                <input type="text" class="form-control" id="merid" name="merid" required>
            </div>
        <input type="submit" value="Add category">
        </div>
    </form> 
        
    </body>
   
</html>
