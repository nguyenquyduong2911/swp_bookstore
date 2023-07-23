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
        <title>Đơn hàng đang ship</title>
        <style>
    table {
        width: 100%;
        max-width: 100vw;
        border-collapse: collapse;
        margin-bottom: 20px;
        color: #696763;
    font-family: 'Roboto', sans-serif;
    font-size: 14px;
    text-transform: uppercase;
    
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
        <h1>Đơn hàng đang ship</h1>
        
        <table>
            <tr style="font-size: 75%;">
                <th>Id</th>
                <th>Tên khách hàng</th>
                <th>Số lượng sản phẩm</th>
                <th>Địa chỉ</th>
                <th>Ghi chú khách hàng</th>
                <th>Ngày tạo</th>
                <th>Tổng tiền</th>
                <th>Thao tác</th>
            </tr>
            
            
            <% 
            ArrayList<OrderPending> o = (ArrayList<OrderPending>) request.getAttribute("orderpending");
            for (OrderPending order : o) {
        %>
            <tr style="font-size: 75%;">
                <td>#<%= order.getId() %></td>
                <td><%= order.getName() %></td>
                <td><%= order.getBook_count() %></td>
                <td><%= order.getAddress() %></td>
                <td><%= order.getNote() %></td>
                <td><%= order.getDate() %></td>
                <td><%= order.getTotalprice()%>0đ</td>
                <td>
                    <a href=""></a>
    <a href="approve?id=<%= order.getId() %>">Approve</a> ||
    <a href="decline?id=<%= order.getId() %>">Decline</a> 
</td>


            </tr>
             <% 
            }
        %>
        </table>
        
    </body>
</html>
