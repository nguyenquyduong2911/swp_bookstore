<%-- 
    Document   : admin
    Created on : Jun 12, 2023, 1:51:52 PM
    Author     : Admin


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% if(request.getSession().getAttribute("curr")==null)
          out.println("<h1 style=\"color:red\">Access denied<h1>");
          else{
          %>
         
       
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
    </head>
<body>
    <h1>Hello admin</h1>
    <ul class="sidebar">
        <li><a href="addbook">Add book</a></li>
        <li><a href="listbook">Show book</a></li>
        <li><a href="addc1">Add category</a></li>
        <li><a href="url">Modify book</a></li>
        <li><a href="url">Modify category</a></li>
        <li><a href="url">Show user</a></li>
        <li><a href="url">Delete user</a></li>
        <li><a href="url">Modify user role</a></li>
    </ul>
</body>
<% } %>

</html>
--%>

<%@page import="Model.*" import="Dao.*" import="Dao.Impl.*" import="java.util.ArrayList" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    .fadeOutLeft{
        animation: fadeOutLeft 0.3s ease-in;
        animation-fill-mode: forwards;
    }
    @keyframes fadeOutLeft {
        0% {
            opacity: 1;
            transform: translateX(0);
        }
        50%{
            opacity: 1;
            transform: skewX(-5deg);
        }
        75%{
            opacity: 1;
            transform: skewX(5deg);
        }
        100% {
            opacity: 0;
            transform: translateX(-100%);
        }
    }
    body{
        background-color: aliceblue;
    }
</style>

<div style="
     float: left;
     height: 100vh;
     width: 20%;
     ">

</div>

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
            <a href="addbook" class=" nav-link  text-white <%=request.getServletPath().equals("addbook.jsp")?"active":""%>" aria-current="page">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Add book
            </a>
        </li>
        <li>
            <a href="listbook" class="nav-link  text-white <%=request.getServletPath().equals("listbook.jsp")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Show book
            </a>
        </li>
        <li>
            <a href="addc1" class="nav-link text-white <%=request.getServletPath().startsWith("addc1.jsp")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Add Category
            </a>
        </li>
        <li>
            <a href="???" class="nav-link text-white <%=request.getServletPath().equals("???")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Modify book
            </a>
        </li>
        <li>
            <a href="???" class="nav-link text-white <%=request.getServletPath().equals("???")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Modify category
            </a>
        </li>
        <li>

            <a href="???" class="nav-link text-white <%=request.getServletPath().startsWith("???")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Show user
        </li>
        <li>
            <a href="???" class="nav-link text-white <%=request.getServletPath().equals("???")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Delete user
            </a>
        </li>
        <li>
            <a href="???" class="nav-link text-white <%=request.getServletPath().startsWith("???")?"active":""%>">
                <svg class="bi pe-none me-2" width="16" height="16"></svg>
                Modify user role
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
