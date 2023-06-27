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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Checkout | E-Shopper</title>
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
         <style>
    .bill-to input[type="text"],
    .bill-to select,
    .order-message textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .bill-to select {
        height: 34px;
    }

    .bill-to input[type="text"]:focus,
    .bill-to select:focus,
    .order-message textarea:focus {
        outline: none;
        border-color: #4d90fe;
    }

    .bill-to p {
        font-weight: bold;
    }
</style>
    </head><!--/head-->

   


    <body>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="home"><img src="images/home/logo.png" alt="" /></a>
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
                                            <li><a href="cart.html">Cart</a></li> 
                                            <li><a href="login.html">Login</a></li> 
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
        <form action="checkout" method="post">   
            <section id="cart_items">
                <div class="container">
                    <div class="breadcrumbs">
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Check out</li>
                        </ol>
                    </div><!--/breadcrums-->


                    <div class="shopper-informations">
                        <div class="row">					
                            <div class="col-sm-5 clearfix">
                                <div class="bill-to">
                                    <p>Bill To</p>
                                    <div class="form-one">
                                   
                                        <input type="text" name="name" placeholder="FullName" value="${ad.first_name} ${ad.last_name}">                                        
                                            <input type="text" name="email" placeholder="Email*" value="${curr.email}">
                                            <input type="text" name="phone"  placeholder="Mobile Phone" value="${ad.phone}">
                                            <select name="city"  id="city" >
                                                <option value="city" selected>Chọn tỉnh thành</option>           
                                            </select>
                                            <select  name="district" id="district" >
                                                <option value="district" selected>Chọn quận huyện</option>
                                            </select>
                                            <select name="ward" id="ward" >
                                                <option value="ward" selected>Chọn phường xã</option>
                                            </select>
                                            <input type="text" name="delivery" placeholder="Delivery Address">
                                       
                                    </div>
                                
                                </div>
                            </div>
                           
 <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
                    <script>
                                        var citis = document.getElementById("city");
                                        var districts = document.getElementById("district");
                                        var wards = document.getElementById("ward");
                                        var Parameter = {
                                            url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json",
                                            method: "GET",
                                            responseType: "application/json",
                                        };
                                        var promise = axios(Parameter);
                                        promise.then(function (result) {
                                            renderCity(result.data);
                                        });

                                        function renderCity(data) {
                                            for (const x of data) {
                                                citis.options[citis.options.length] = new Option(x.Name, x.Name); // Change here
                                            }
                                            citis.onchange = function () {
                                                district.length = 1;
                                                ward.length = 1;
                                                if (this.value != "") {
                                                    const result = data.filter(n => n.Name === this.value); // Change here

                                                    for (const k of result[0].Districts) {
                                                        district.options[district.options.length] = new Option(k.Name, k.Name); // Change here
                                                    }
                                                }
                                            };
                                            district.onchange = function () {
                                                ward.length = 1;
                                                const dataCity = data.filter((n) => n.Name === citis.value);
                                                if (this.value != "") {
                                                    const selectedDistrict = dataCity[0].Districts.find(d => d.Name === this.value);
                                                    for (const w of selectedDistrict.Wards) {
                                                        wards.options[wards.options.length] = new Option(w.Name, w.Name);
                                                    }
                                                }
                                            };
                                        }

                    </script>
                                <div class="col-sm-4">
                                    <div class="order-message">
                                        <div class="bill-to"><p>Shipping Order</p></div> 
                                        <textarea name="message"  placeholder="Notes about your order, Special Notes for Delivery" rows="16"></textarea>
                                    </div>	
                                </div>	
                           
                        </div>
                    </div>
                   
                    <div class="review-payment">
                        <h2>Review & Payment</h2>
                    </div>

                    <div class="table-responsive cart_info">
                        <table class="table table-condensed">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">Item</td>
                                    <td class="description"></td>
                                    <td class="price">Price</td>
                                    <td class="quantity">Quantity</td>
                                    <td class="total">Total</td>
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
                                            <p>$${i.product.price}</p>
                                        </td>
                                        <td class="cart_quantity">
                                            <div class="cart_quantity_button">
                                                <input id="quantityInput" class="cart_quantity_input" type="text" name="quantity" value="${i.quantity}" autocomplete="off" size="2" readonly>
                                            </div>
                                        </td>
                                        <td class="cart_total">
                                            <p class="cart_total_price">$<fmt:formatNumber value="${i.product.price * i.quantity}" pattern="0.00" /></p>
                                        </td>                  
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                    <td colspan="2">
                                        <table class="table table-condensed total-result">
                                            <tr>
                                                <td>Cart Sub Total</td>
                                                <td>$<fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="0.00" /></td>
                                            </tr>
                                            <tr>
                                                <td>Exo Tax</td>
                                                <td>$0</td>
                                            </tr>
                                            <tr class="shipping-cost">
                                                <td>Shipping Cost</td>
                                                <td>Free</td>										
                                            </tr>
                                            <tr>
                                                <td>Total</td>
                                                <td><span>$<fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="0.00" /></span></td>                                       
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div class="col-sm-6">

                                                        <button type="submit" class="btn btn-default check_out">
                                                            <i>Payment Confirmation</i>
                                                        </button>

                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                            </tbody>

                        </table>                            
                    </div>

                </div>
            </section> <!--/#cart_items-->

        </form>



 <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>