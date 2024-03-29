<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>      
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"> <!--hello-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Cart | E-Booker</title>
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

                                    <li><a href="validate"><i class="fa fa-crosshairs"></i> Thanh toán</a></li>
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>Giỏ hàng(${sessionScope.size})</a></li>
                                        <% 
if (x != null) {
out.println("<li><a href=\"logout\"><i class=\"fa fa-user\"></i> Đăng xuất</a></li>");
}

if (x == null) {
out.println("<li><a href=\"login.jsp\"><i class=\"fa fa-lock\"></i> Đăng nhập</a></li>");
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
                                    <li><a href="home" class="active">Trang chủ</a></li>
                                    <li class="dropdown"><a href="product">Shop<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="product">Sản Phẩm</a></li>
                                            <li><a href="validate">Thanh Toán</a></li> 
                                            <li><a href="cart.jsp">Giỏ hàng</a></li> 
                                                                                    <% 
if (x != null) {
out.println("<li><a href=\"logout\"> Đăng Xuất</a></li>");
}

if (x == null) {
out.println("<li><a href=\"login.jsp\"> Đăng Nhập</a></li>");
}
                                        %>
                                        </ul>
                                    </li> 
                                </ul>
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
                        <li><a href="#">Home</a></li>
                        <li class="active">Shopping Cart</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Sản phẩm</td>
                                <td class="description"></td>
                                <td class="price">Giá</td>
                                <td class="quantity">Số lượng</td>
                                <td class="total">Tổng tiền</td>
                                <td></td>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach items="${sessionScope.cart.item}" var="i">     
                                <tr>                                    
                                    <td class="cart_product">
                                        <div class="col-sm-12">
                                            <div class="product_image">
                                                <a href=""><img style="width: 110px; height: 110px;" src="${i.product.image}" alt=""></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart_description">
                                        <div class="col-sm-12">
                                            <h4><a href="">${i.product.name}</a></h4>
                                        </div>
                                    </td>
                                    <td class="cart_price">
                                        <p><fmt:formatNumber value="${i.product.price}" pattern="0.000"/>đ</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <a class="cart_quantity_up" href="process?num=1&id=${i.product.id}" onclick="increaseQuantity(event, ${i.quantity}, ${i.product.quantity})"> + </a>
                         <input id="quantityInput" class="cart_quantity_input" type="text" name="quantity" value="${i.quantity}" autocomplete="off" size="2" readonly>
                                            <a class="cart_quantity_down" href="process?num=-1&id=${i.product.id}"> - </a>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price"><fmt:formatNumber value="${i.product.price * i.quantity}" pattern="0.000" />đ</p>
                                    </td>
                                    <td class="cart_delete"> 
                                        <form action="process" method="post">
                                            <input type="hidden" name="id" value="${i.product.id}" />
                                            <button type="submit" class="cart_quantity_delete">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <div class="warning-message" style="display: none;">The requested quantity exceeds the available quantity for this item.</div>

                        <script>
                            function increaseQuantity(event, currentQuantity, availableQuantity) {
                                if (currentQuantity >= availableQuantity) {
                                    event.preventDefault();
                                    var warningMessage = document.querySelector('.warning-message');
                                    warningMessage.style.display = 'block';
                                    var tableElement = document.querySelector('table');
                                    tableElement.parentNode.insertBefore(warningMessage, tableElement.nextSibling);
                                } else {
                                    var warningMessage = document.querySelector('.warning-message');
                                    warningMessage.style.display = 'none';
                                }
                            }
                        </script>


                    </table>
                </div>
            </div>
        </section> <!--/#cart_items-->

        <section id="do_action">
            <div class="container">
                <c:choose>
                    <c:when test="${not empty sessionScope.cart.item}">
                        <div class="col-sm-6">
                            <div class="total_area">
                                <ul>
                                    <li>Tổng tiền <span><fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="0.000" />đ</span></li>
                                    <li>VAT <span>0đ</span></li>
                                    <li>Phí Vận Chuyển <span>Free</span></li>
                                    <li>Tổng thanh toán <span><fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="0.000" />đ</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <form action="validate" method="post">                             
                                <button type="submit" class="btn btn-default check_out">
                                    <i>Thanh Toán</i>
                                </button>
                            </form>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="col-sm-12">
                            <p>Chưa có sản phẩm trong giỏ hàng  <a href="product">Mua Sắm Ngay</a>.</p>
                        </div>
                    </c:otherwise>
                </c:choose>   
            </div>
        </section><!--/#do_action-->





        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>