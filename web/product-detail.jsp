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
        <title>Product Details | E-Booker</title>
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
            .registration-message {
                margin-top: 20px;
                padding: 10px;
                background-color: #f9f9f9;
                border: 1px solid #ccc;
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

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 padding-right">
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-4">
                                <div class="view-product">
                                    <img src="${bd.image}" alt="" />
                                    <h3>ZOOM</h3>
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">

                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a class="col-sm-4" href=""><img src="${bm.image1}" alt=""></a>
                                            <a class="col-sm-4" href=""><img src="${bm.image2}" alt=""></a>
                                            <a class="col-sm-4" href=""><img src="${bm.image3}" alt=""></a>
                                        </div>
                                        <div  class="item">
                                            <a class="col-sm-4" href=""><img src="${bm.image4}" alt=""></a>
                                            <a class="col-sm-4" href=""><img src="${bm.image5}" alt=""></a>
                                            <a class="col-sm-4" href=""><img src="${bm.image6}" alt=""></a>
                                        </div>


                                    </div>

                                    <!-- Controls -->
                                    <a class="left item-control ${empty bm.image1 && empty bm.image4 ? 'hidden' : ''}" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right item-control ${empty bm.image3 && empty bm.image6 ? 'hidden' : ''}" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>

                            </div>
                            <div class="col-sm-5">
                                <div class="product-information"><!--/product-information-->
                                    <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                    <h2>${bd.name}</h2>
                                    <img src="images/product-details/rating.png" alt="" />
                                    <form action="cart" method="post" onsubmit="return validateQuantity(event)">
                                        <span>
                                            <span>${bd.price}đ</span>
                                            <label>Quantity:</label>
                                            <input type="text" name="quantity" id="quantityInput" value="1" />
                                            <input type="hidden" name="id" value="${bd.id}" />
                                            <a href="#" onclick="validateQuantity(event)" class="btn btn-default cart" ${bd.status_product == 1 ? 'disabled' : ''}>
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to cart
                                            </a>
                                            ${bd.status_product == 1 ? '<span class="out-of-stock">Sản phẩm hiện tại tạm hết</span>' : ''}
                                        </span>
                                    </form>

                                    <p><b>Nhà cung cấp:</b>${bd.supplier}</p>
                                    <p><b>Nhà xuất bản:</b>${bd.publisher}</p>
                                    <p><b>Tác giả:</b>${bd.author}</p>
                                    <p><b>Hình thức bìa:</b>${bd.cover_form}</p>
                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->
                        <script>

                            function validateQuantity(event) {
                                event.preventDefault(); // Prevent the default form submission behavior

                                var quantityInput = document.getElementById('quantityInput');
                                var quantity = parseInt(quantityInput.value);
                                var availableQuantity = parseInt(${qtt});
                                var quantityinDB = ${bd.quantity};
                                // Check if the quantity is a positive integer
                                if (isNaN(quantity) || quantity <= 0 || !Number.isInteger(quantity)) {
                                    alert('nhập số lượng theo số.');
                                    return false; // Prevent form submission
                                }

                                // Check if the quantity exceeds the available quantity
                                if (quantity > availableQuantity) {
                                    alert('Số lượng yêu cầu vượt quá số lượng hiện có.');
                                    return false; // Prevent form submission
                                }
                                if (quantity > quantityinDB) {
                                    alert('Số lượng yêu cầu vượt quá số lượng hiện có.');
                                    return false; // Prevent form submission
                                }

                                // If the quantity is valid, manually submit the form
                                event.target.closest('form').submit();
                            }

                        </script>


                        <div class="category-tab shop-details-tab"><!--category-tab-->
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#detail" data-toggle="tab">Thông tin sản phẩm</a></li>                          
                                    <li><a href="#reviews" data-toggle="tab">Đánh giá sản phẩm</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="detail" >
                                    <div class="col-sm-12">
                                        <p><b>Nhà cung cấp: </b>${bd.supplier}</p>
                                        <p><b>Tác giả: </b>${bd.author}</p>
                                        <p><b>Nhà xuất bản: </b>${bd.publisher}</p>
                                        <p><b>Năm xuất bản: </b>${bd.year_publish}</p>
                                        <p><b>trọng lượng(gr): </b>${bd.weight}</p>
                                        <p><b>Kích Thước Bao Bì: </b>${bd.package_size}cm</p>
                                        <p><b>Số trang: </b>${bd.num_page}</p>
                                        <p><b>Hình thức: </b>${bd.cover_form}</p>

                                        <p><b>Description:</b></p>
                                        <p>${bd.description}</p>

                                    </div>
                                </div>
                                <div class="tab-pane fade" id="reviews">
                                    <div class="col-sm-12">
                                        <c:forEach var="o" items="${review}">
                                            <div class="comment">
                                                 
                                                <ul class="comment-meta">
                                                    <li><a href="#"><i class="fa fa-user"></i>${o.accountName}</a></li>
                                                    <li><a href="#"><i class="fa fa-calendar-o"></i>${o.date}</a></li>
                                                    <li><div class="vote-buttons">
                                                    <c:if test="${o.opinion == 1}">
                                                        <button class="upvote-btn"><i class="fa fa-thumbs-up"></i>Recommend</button>
                                                    </c:if>
                                                    <c:if test="${o.opinion != 1}">
                                                        <button class="downvote-btn"><i class="fa fa-thumbs-down"></i>Not Recommend</button>
                                                    </c:if>
                                                </div></li>
                                                </ul>
                                                <p>${o.comment}</p>
                                               
                                            </div>
                                        </c:forEach>
                                        <div style="clear: both;"></div> <!-- Add a clearing div -->
                                        <div class="text-center">
                                            <ul class="pagination">
                                                <c:forEach begin="1" end="${pageCount}" var="i">
                                                    <li class="${indexPage == i ? 'active' : ''}">
                                                        <a href="productdetail?index=${i}&productid=${bd.id}"">${i}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>

                                        <%        
        if (x != null) { %>
                                        <p><b>Viết đánh giá sản phẩm</b></p>
                                        <form action="review" method="post">
                                            <input class="hidden"  name="cid" value="${curr.idAccount}">
                                            <input class="hidden"  name="pid" value="${bd.id}">

                                            <textarea name="review"></textarea>

                                            <label>
                                                <input type="radio" name="recommendation" value="1" />
                                                Recommended
                                            </label>

                                            <label>
                                                <input type="radio" name="recommendation" value="0" />
                                                Not Recommended
                                            </label>

                                            <input type="submit" class="btn btn-default pull-right" value="Submit">
                                        </form>


                                        <% } else { %>
                                        <div class="registration-message">
                                            <p>Chỉ có thành viên mới có thể viết nhận xét.Vui lòng  <a href="login.jsp">đăng nhập</a> hoặc <a href="login.jsp">đăng ký.</a></p>
                                        </div>
                                        <% } %>
                                    </div>
                                </div>


                            </div>
                        </div>




                    </div>
                </div><!--/category-tab-->


                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">Sản Phẩm Tương Tự</h2>

                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">

                            <c:forEach var="item" items="${itemList}" varStatus="status">
                                <c:if test="${status.index % 3 == 0}">
                                    <div class="item ${status.index == 0 ? 'active' : ''}">
                                        <div class="row">
                                            <c:forEach begin="${status.index}" end="${status.index + 2}" varStatus="innerStatus">
                                                <c:if test="${innerStatus.index < itemList.size()}">
                                                    <div class="col-sm-4">
                                                        <div class="product-image-wrapper">
                                                            <div class="single-products">
                                                                <div class="productinfo text-center">
                                                                    <img src="${itemList[innerStatus.index].image}" alt="" />
                                                                    <h2>${itemList[innerStatus.index].price}đ</h2>
                                                                    <p class="item-name" >${itemList[innerStatus.index].name}</p>
                                                                    <a href="productdetail?productid=${itemList[innerStatus.index].id}" class="btn btn-default add-to-cart">
                                                                        <i class="fa fa-shopping-cart"></i>Xem Chi Tiết
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>

                        </div>
                        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div><!--/recommended_items-->


            </div>
        </div>
    </div>
</section>





<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<script src="js/script.js"></script>
</body>
</html>