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
    </head>
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
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>Giỏ Hàng:${sessionScope.size}</a></li>
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

       
                        <section id="cart_items">
            <div class="container">   
                 <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="javascript:history.back()">Back</a></li>
                        <li class="active">Tóm tắt mua hàng</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">ID</td>
                                <td class="description">sản phẩm</td>
                                <td class="price">Order Placed</td>
                                <td class="quantity">Status</td>
                                <td class="price">Total Price</td>
                                <td class="total"></td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ordersum}" var="i">     
                                <tr>                                                                        
                                    <td class="cart_description">
                                        <div class="col-sm-12">
                                            <h4><a>${i.id}</a></h4>
                                        </div>
                                    </td>
                                    <td class="cart_description">
                                       
                                            <h4><a>${i.book_count}</a></h4>
                                        
                                    </td>
                                    <td class="cart_description">
                                       
                                            <h4><a>${i.date}</a></h4>
                                        
                                    </td>
                                    <td class="cart_description">
                                       
                                            <h4><a> ${i.status == 0 ? 'Chờ xử lý' : i.status == 1 ? 'Nhận hàng thành công' : 'Đang giao hàng'}</a></h4>
                                        
                                    </td>
                                    <td class="cart_description">
                                        
                                            <h4><a>${i.total_price}vnd</a></h4>
                                       
                                    </td>
                                    <td class="cart_description">
                                      
                                            <h4><a href="orderdetail?oid=${i.id}&id=${curr.idAccount}">Xem chi tiết</a></h4>
                                     
                                    </td>
                                                                 
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>
            </div>
        </section> <!--/#cart_items-->

</html>

   