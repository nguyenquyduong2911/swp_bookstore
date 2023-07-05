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
                <th>Id</th>
                <th>Số lượng sản phẩm</th>
                <th>Ngày tạo</th>
                <th>Thành tiền</th>
                <th>Trạng thái</th>
                <th></th>
            </tr>
            
            
            <% 
            ArrayList<OrderSummary> o = (ArrayList<OrderSummary>) request.getAttribute("ordersum");
            Account x = (Account) request.getSession().getAttribute("curr");
            for (OrderSummary order : o) {
        %>
            <tr>
                <td><%= order.getId() %></td>
                <td><%= order.getBook_count() %></td>
                <td><%= order.getDate() %></td>
                <td><%= order.getTotal_price() %></td>
                <td><%= order.getStatus()==0?"Chờ xử lý":"Đã chấp nhận" %></td>
                <td><a href="orderdetail?oid=<%= order.getId() %>&id=<%= x.getIdAccount() %>">Chi tiết đơn hàng</a></td>

            </tr>
             <% 
            }
        %>
        </table>
        
    </body>
</html>
