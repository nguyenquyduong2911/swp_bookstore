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
        <title>Checkout | E-Booker</title>
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
                                    <p>Thông tin khách hàng</p>
                                    <div class="form-one">
                                        <form id="billingForm">
                                            <input type="text" name="name" placeholder="Tên đầy đủ" value="${ad.first_name} ${ad.last_name}" required>
                                            <input type="text" name="email" placeholder="Email*" value="${curr.email}" required>
                                            <input type="text" name="phone" placeholder="Số điện thoại" value="${ad.phone}" required>
                                            <select name="city" id="city" required>
                                                <option value="" selected>Chọn tỉnh thành</option>
                                            </select>
                                            <select name="district" id="district" required>
                                                <option value="" selected>Chọn quận huyện</option>
                                            </select>
                                            <select name="ward" id="ward" required>
                                                <option value="" selected>Chọn phường xã</option>
                                            </select>
                                            <input type="text" name="delivery" placeholder="Địa chỉ giao hàng" required>
                                        </form>
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
                                    <div class="bill-to"><p>Ghi Chú</p></div> 
                                    <textarea name="message"  placeholder="Thêm thông tin ghi chú" rows="16"></textarea>
                                </div>	
                            </div>	

                        </div>
                    </div>

                    <div class="review-payment">
                        <h2>Thông tin đơn hàng</h2>
                    </div>

                    <div class="table-responsive cart_info">
                        <table class="table table-condensed">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">Sản Phẩm</td>
                                    <td class="description"></td>
                                    <td class="price">Giá</td>
                                    <td class="quantity">Số Lượng</td>
                                    <td class="total">Tổng Tiền</td>
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
                                                <input id="quantityInput" class="cart_quantity_input" type="text" name="quantity" value="${i.quantity}" autocomplete="off" size="2" readonly>
                                            </div>
                                        </td>
                                        <td class="cart_total">
                                            <p class="cart_total_price"><fmt:formatNumber value="${i.product.price * i.quantity}" pattern="0.000" />đ</p>
                                        </td>                  
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                    <td colspan="2">
                                        <table class="table table-condensed total-result">
                                            <tr>
                                                <td>Tổng tiền</td>
                                                <td><fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="0.000" />đ</td>
                                            </tr>
                                            <tr>
                                                <td>VAT</td>
                                                <td>$0</td>
                                            </tr>
                                            <tr class="shipping-cost">
                                                <td>Phí Vận Chuyển</td>
                                                <td>Free</td>										
                                            </tr>
                                            <tr>
                                                <td>Tổng Thanh Toán</td>
                                                <td><span><fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="0.000" />đ</span></td>                                       
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div class="col-sm-6">

                                                        <button type="submit" class="btn btn-default check_out">
                                                            Xác Nhận Đặt Hàng
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
<script>
    const form = document.getElementById('billingForm');
    form.addEventListener('submit', function (event) {
        event.preventDefault();
        const inputs = form.querySelectorAll('input, select');
        let isValid = true;

        inputs.forEach(input => {
            if (input.value.trim() === '') {
                isValid = false;
                input.classList.add('warning');
            } else {
                input.classList.remove('warning');
            }
        });

        if (isValid) {
            // The form is valid, you can submit it or perform other actions here
            console.log('Form submitted successfully.');
        } else {
            // The form is not valid, show a warning or error message here
            console.log('Please fill out all required fields.');
        }
    });
</script>


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>