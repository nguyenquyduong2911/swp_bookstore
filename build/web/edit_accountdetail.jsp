


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Detail</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">

        <!-- Custom CSS -->
        <link href="css/profileDetail.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <style>
            .edit-profile-container {
                padding: 30px;
                background-color: #f9f9f9;
                border: 1px solid #ddd;
                border-radius: 4px;
            }

            .edit-profile-container h1 {
                font-size: 24px;
                margin-bottom: 30px;
            }

            .edit-profile-container form .form-group {
                margin-bottom: 20px;
            }

            .edit-profile-container form label {
                display: inline-block;
                width: 120px;
                font-weight: bold;
            }

            .edit-profile-container form input[type="text"],
            .edit-profile-container form input[type="email"],
            .edit-profile-container form select {
                width: 300px;
                padding: 6px 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                outline: none;
            }

            .edit-profile-container form button[type="submit"] {
                padding: 10px 20px;
                background-color: #337ab7;
                border: none;
                color: #fff;
                font-size: 16px;
                font-weight: bold;
                border-radius: 4px;
                cursor: pointer;
            }

            .edit-profile-container form button[type="submit"]:hover {
                background-color: #286090;
            }
            .edit-profile-container form .input-field {
                width: 300px;
                padding: 6px 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                outline: none;
            }

        </style>
    </head>

    <body>
        <!-- Header code goes here -->
        <header id="header"><!--header-->
            

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="home"><img src="images/home/newlogo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <%       
 Account x = (Account) request.getSession().getAttribute("curr");
 if (x != null) {
     out.println("<li><a href=\"account_detail?id=" + x.getIdAccount() + "\"><i class=\"fa fa-user\"></i> " + x.getName() + "</a></li>");
 }
                                    %>
                                    <li><a href="validate"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>Cart(${sessionScope.size})</a></li>
                                        <% 
if (x != null) {
out.println("<li><a href=\"logout\"><i class=\"fa fa-user\"></i> Sign out</a></li>");
}

if (x == null) {
out.println("<li><a href=\"login.jsp\"><i class=\"fa fa-lock\"></i> Login</a></li>");
}
                                        %>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="home" class="active">Home</a></li>
                                    <li class="dropdown"><a href="product">Shop<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="product">Products</a></li>
                                            <li><a href="validate">Checkout</a></li> 
                                            <li><a href="cart.jsp">Cart</a></li> 
                                                                                                                              <% 
if (x != null) {
out.println("<li><a href=\"logout\"> Sign out</a></li>");
}

if (x == null) {
out.println("<li><a href=\"login.jsp\"> Login</a></li>");
}
                                        %>
                                        </ul>
                                    </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <form action="product" method="get" id="searchForm" onsubmit="return false;">
                                    <input type="text" name="searchInput" placeholder="Search" onkeydown="if (event.keyCode === 13) {
                                                document.getElementById('searchForm').submit();
                                                return false;
                                            }">
                                    <a href="#" onclick="document.getElementById('searchForm').submit();" style="display: none;">Search</a>
                                </form>
                            </div>
                        </div>


                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->

        <div class="container bootdey">
            <div class="row">
                <div class="profile-nav col-md-3">
                    <div class="panel">
                        <div class="user-heading round">
                            <a href="#">
                                <img src="https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg" alt="">
                            </a>
                            <h1>${a.first_name} ${a.last_name}</h1>
                            <p>${a.email}</p>
                        </div>

                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="account_detail?id=${curr.idAccount}"> <i class="fa fa-user"></i> Profile</a></li>
                            <li class="active"><a href="edit_accountdetail?id=${curr.idAccount}"> <i class="fa fa-edit"></i> Edit profile</a></li>
                            <li><a href="ordersum?id=${curr.idAccount}"> <i class="fa fa-history"></i> Order History</a></li>
                        </ul>
                    </div>
                </div>

                <div class="profile-info col-md-9">
                    <div class="edit-profile-container">
                        <h1>Edit Profile</h1>
                        <form action="edit_accountdetail" method="post">
                            <input type="hidden" name="id" value="${curr.idAccount}">
                            <div class="form-group">
                                <label for="user_name">User Name:</label>
                                <input type="text" class="form-control" id="user_name" name="user_name" value="${curr.name}">
                            </div>
                            <div class="form-group">
                                <label for="first_name">First Name:</label>
                                <input type="text" class="form-control" id="first_name" name="first_name" value="${a.first_name}">
                            </div>
                            <div class="form-group">
                                <label for="last_name">Last Name:</label>
                                <input type="text" class="form-control" id="last_name" name="last_name" value="${a.last_name}">
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" name="email"value="${a.email}">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <input type="text" class="form-control" id="phone" name="phone" value="${a.phone}">
                            </div>
                            <div class="form-group">
                                <label for="dob">Date of Birth:</label>
                                <input type="date" class="form-control input-field" id="dob" name="dob" value="${a.dob}">
                            </div>
                            <div class="form-group">
                                <label for="gender">Gender:</label>
                                <select class="form-control" id="gender" name="gender">
                                    <option value="1" >Male</option>
                                    <option value="0" >Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="change_password">Change Password:</label>
                                <input type="checkbox" id="change_password" name="change_password">
                            </div>
                            <div id="password_fields" style="display: none;">
                                <div class="form-group">
                                    <label for="current_password">Current Password:</label>
                                    <input type="password" class="form-control" id="current_password" name="current_password">
                                </div>
                                <div class="form-group">
                                    <label for="new_password">New Password:</label>
                                    <input type="password" class="form-control" id="new_password" name="new_password">
                                </div>
                                <div class="form-group">
                                    <label for="reenter_password">Re-enter New Password:</label>
                                    <input type="password" class="form-control" id="reenter_password" name="reenter_password">
                                    <small id="password_warning" style="color: red; display: none;">Passwords do not match.</small>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary" onclick="validatePassword()">Save Changes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            document.getElementById('change_password').addEventListener('change', function () {
                var passwordFields = document.getElementById('password_fields');
                if (this.checked) {
                    passwordFields.style.display = 'block';
                } else {
                    passwordFields.style.display = 'none';
                }
            });

            function validatePassword() {
                const changePasswordCheckbox = document.getElementById("change_password");
                const currentPassword = document.getElementById("current_password").value;
                const newPassword = document.getElementById("new_password").value;
                const reenterPassword = document.getElementById("reenter_password").value;
                const passwordWarning = document.getElementById("password_warning");

                if (changePasswordCheckbox.checked) {
                    if (currentPassword !== "${curr.password}") {
                        passwordWarning.textContent = "Invalid password.";
                        passwordWarning.style.display = "block";
                        event.preventDefault(); // Prevents form submission if passwords don't match
                    } else if (newPassword === currentPassword) {
                        passwordWarning.textContent = "New password should be different from the current password.";
                        passwordWarning.style.display = "block";
                        event.preventDefault(); // Prevents form submission if passwords don't match
                    } else if (newPassword !== reenterPassword) {
                        passwordWarning.textContent = "Passwords do not match.";
                        passwordWarning.style.display = "block";
                        event.preventDefault(); // Prevents form submission if passwords don't match
                    } else {
                        passwordWarning.style.display = "none";
                    }
                } else {
                    passwordWarning.style.display = "none";
                }
            }
        </script>


        <!-- Footer code goes here -->
    </body>
</html>
