<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | E-Booker</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
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
                                    <li><a href="validate"><i class="fa fa-crosshairs"></i>Thanh Toán</a></li>
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>Giỏ Hàng(${sessionScope.size})</a></li>
                                        <% 
if (x != null) {
out.println("<li><a href=\"logout\"><i class=\"fa fa-user\"></i>Đăng Xuất</a></li>");
}

if (x == null) {
out.println("<li><a href=\"login.jsp\"><i class=\"fa fa-lock\"></i>Đăng Nhập</a></li>");
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
                                    <li><a href="home" class="active">Trang Chủ</a></li>
                                    <li class="dropdown"><a href="product">Shop<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="product">Sản Phẩm</a></li>
                                            <li><a href="validate">Thanh Toán</a></li> 
                                            <li><a href="cart.jsp">Giỏ Hàng</a></li> 
                                                                                                                                <% 
if (x != null) {
out.println("<li><a href=\"logout\">Đăng Xuất</a></li>");
}

if (x == null) {
out.println("<li><a href=\"login.jsp\">Đăng Nhập</a></li>");
}
                                        %>
                                        </ul>
                                    </li> 
                                </ul>
                            </div>
                       


                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập tài khoản của bạn</h2>
						<form action="login" method="POST">
							<input type="email" name="email" placeholder="Nhập Email" />
							<input type="password" name="pass" placeholder="Nhập mật khẩu" />
							<span>
                                                            <a href="forgot">Quên mật khẩu?</a>
							</span>
							<button type="submit" class="btn btn-default">Đăng Nhập</button>
                                                        <%
                                                            if(request.getAttribute("ls")!=null){
                                                               boolean a = (boolean) request.getAttribute("ls");
                                                               if(!a){%>
                                                               <p style="color: red">Login Failed
   <%                                                         }
                                                            }
 


                                                        %>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký</h2>
						<form action="register" method="POST">
							<input type="text" name="name" placeholder="Nhập tên của bạn"/>
							<input type="email" name="email" placeholder="Nhập Email"/>
							<input type="password" name="password" placeholder="Nhập mật khẩu"/>
							<input type="password" name="repassword" placeholder="Nhập lại mật khẩu"/>
							<button type="submit" class="btn btn-default">Đăng Ký</button>
						</form>
                                                <%
Boolean emailExisted = (Boolean) request.getAttribute("emailexisted");
Boolean notmatchedpassword = (Boolean) request.getAttribute("notmatchedpassword");

if (emailExisted != null && emailExisted) {
%>
    <p style="color: red;">Email already exists!</p>
<%
}

if (notmatchedpassword != null && notmatchedpassword) {
%>
    <p style="color: red;">Password not matched</p>
<%
}
%>



					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
	
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
