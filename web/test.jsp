<%-- 
    Document   : test
    Created on : May 26, 2023, 3:25:24 PM
    Author     : taote
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:forEach var="o" items="${lst}">
        <li>${o.name_mer}</li>
    </c:forEach>
</body>
</html>
