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
        <title>Show Order Pending</title>
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
        <h1>Order Pending</h1>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Tên khách hàng</th>
                <th>Số lượng sản phẩm</th>
                <th>Ngày tạo</th>
                <th>Thành tiền</th>
                <th>Thao tác</th>
            </tr>
            
            
            <% 
            ArrayList<OrderPending> o = (ArrayList<OrderPending>) request.getAttribute("orderpending");
            SellerDAO dao = new SellerDAO();
            for (OrderPending order : o) {
            Account x = dao.getAccount(order.getCid());
        %>
            <tr>
                <td><%= order.getId() %></td>
                <td><%= x.getName() %></td>
                <td><%= order.getBook_count() %></td>
                <td><%= order.getDate() %></td>
                <td><%= order.getTotal_price() %></td>
                <td>
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
