<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dal.*" %>
<%@ page import="entity.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Order History</title>
        <style>
    table {
        width: 100%;
        max-width: 100vw;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 8px;
        text-align: left;
        vertical-align: top;
        border: 1px solid #ddd;
    }

    th {
        background-color: #f1f1f1;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f5f5f5;
    }
    .product-image{
        width:100%;
    }
    .img-cell{
        width: 100px;
        height: 100px
    }
    tr{
        font-size:130%;
    }
    
</style>
    </head>
    <body>
        <h1>Order History</h1>
        
        <table>
            <tr>
                <th>Hình ảnh</th>
                <th>Tên sản phẩm</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
            </tr>
            
            
            <% 
            ArrayList<OrderDetail> o = (ArrayList<OrderDetail>) request.getAttribute("orderdetail");
            for (OrderDetail order : o) {
        %>
            <tr>
                 <td class="img-cell"><img class="product-image" src="<%= order.getImage() %>" alt="Product Image"></td>
                <td><%= order.getProduct_name() %></td>
                <td><%= order.getPrice() %></td>
                <td><%= order.getQuantity() %></td>
                <td><%= order.getPrice()*order.getQuantity() %></td>          
            </tr>
             <% 
            }
        %>
        </table>
        
    </body>
</html>
