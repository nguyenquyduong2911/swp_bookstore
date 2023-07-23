<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous"></script>
    <style>
        a {
            text-decoration: none;
            color: black;
        }

        .fadeOutLeft {
            animation: fadeOutLeft 0.3s ease-in;
            animation-fill-mode: forwards;
        }

        @keyframes fadeOutLeft {
            0% {
                opacity: 1;
                transform: translateX(0);
            }

            50% {
                opacity: 1;
                transform: skewX(-5deg);
            }

            75% {
                opacity: 1;
                transform: skewX(5deg);
            }

            100% {
                opacity: 0;
                transform: translateX(-100%);
            }
        }

        body {
            background-color: aliceblue;
        }

        /* Additional CSS for the admin dashboard */
        .admin-dashboard {
            height: 100vh;
            width: 88%;
            position: fixed;
            top:0;
            right: 0;
            z-index: 2;
            background-color: #f7f7f7;
            padding: 20px;
            
        }
        .sidebar{
            background-color: #ff6633;
        }
        .nav-link{
            font-size:150%;
            color: #696763;
    font-family: 'Roboto', sans-serif;
    font-size: 10px;
    text-decoration: none;
    text-transform: uppercase;
        }
        .aofadmin{
            font-size:150%;
            color: #696763;
    font-family: 'Roboto', sans-serif;
    font-size: 14px;
    text-decoration: none;
    text-transform: uppercase;
        }
        .logoadmin{
            margin-left: 20px;
            
        }
        .logoadmin .adminimg{
            margin-bottom: 20px;
        }
        .1link {
  text-align: center;
  display: block;
}
.dboard{
    font-size:150%;
            color: #696763;
    font-family: 'Roboto', sans-serif;
    font-size: 14px;
    text-transform: uppercase;
    
}
.col-md-4{
    
}

        
    </style>
</head>
<body>
<div class="sidebar" style="float: left;height: 100vh;width: 12%;">
   
        <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <a class="logoadmin" href="#"><img class="adminimg" src="images/home/newlogo.png" alt="" /></a>
    
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
        <li style="text-align: left;" class="nav-item">
            <a href="addbook" class=" nav-link  text-white">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Thêm sách
            </a>
        </li>
        <li style="text-align: left;">
            <a href="addc1" class="nav-link  text-white">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Thêm danh mục
            </a>
        </li>
        <li style="text-align: left;">
            <a href="pendingorder" class="nav-link text-white">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Đơn hàng chờ xử lý
            </a>
        </li>
        <li style="text-align: left;">
            <a href="shipping" class="nav-link text-white">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Đơn hàng đang ship
            </a>
        </li>
        <li style="text-align: left;">
            <a href="approveorder" class="nav-link text-white">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Đơn hàng thành công
            </a>
        </li>
    </ul>
    <hr>
    <div style="text-align: center;">
        <a class="nav-link" href="logout"><i class="fa fa-user"></i> Sign out</a>
        
           
        
    </div> 
</div>
<div style="color:red;padding:20px;font-size: 20px; font-family: 'Roboto', sans-serif;">Seller DashBoard</div>
<div class="admin-dashboard container">
       
        <div class="row">
            <%int user=(int)request.getAttribute("user");%>
            <%int order=(int)request.getAttribute("order");%>
            
            <div class="dboard col-md-6">SỐ LƯỢNG ĐƠN <%=order%></div>
            <div class="dboard col-md-6">SỐ LƯỢNG KHÁCH HÀNG <%=user%></div>   
        </div> 
        

</div>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>