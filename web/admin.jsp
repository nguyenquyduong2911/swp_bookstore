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
            color: black
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
    </style>
</head>
<body>
<%
    Account x = (Account) request.getSession().getAttribute("curr");
    if (x != null) {
        if (x.getRole().equals("admin")) {
%>
<div style="float: left;height: 100vh;width: 20%;"></div>
<div class="flex-column flex-shrink-0 p-3 text-bg-dark" style="
     height: 100vh;
     width: 20%;
     position: fixed;
     z-index: 2;
     "
>
    <a href="<%= request.getContextPath()%>/home" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
        <svg class="bi pe-none me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Hello Admin</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
            <a href="addbook" class=" nav-link  text-white"%>
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Add book
            </a>
        </li>
        <li>
            <a href="listbook" class="nav-link  text-white"%>
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Show book
            </a>
        </li>
        <li>
            <a href="addc1" class="nav-link text-white"%>
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Add Category
            </a>
        </li>
        <li>
            <a href="userlist" class="nav-link text-white"%>
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Show user
            </a>
        </li>
    </ul>
    <hr>
    <div class="dropdown">
        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
            <strong>${sessionScope.account.username}</strong>
        </a>
        <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="<%= request.getContextPath()%>/logout">Sign out</a></li>
        </ul>
    </div>
</div>
<%
        } else {
%>
<div>
    <h1 style="color:red;">Access Denied</h1>
    <p style="font-size:20px;">You do not have permission to access this page.</p>
</div>
<%
        }
    } else {
%>
<div>
    <h1 style="color:red;">Access Denied</h1>
    <p style="font-size:20px">Please <a style="font-weight: bold;" href="login">login</a> to access this page.</p>
</div>
<%
    }
%>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
