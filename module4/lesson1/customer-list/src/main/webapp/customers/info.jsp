<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Customer Info</title>
</head>
<body>
<h2>Customer Info</h2>

<c:if test="${not empty customer}">
    <p>ID: ${customer.id}</p>
    <p>Name: ${customer.name}</p>
    <p>Email: ${customer.email}</p>
    <p>Address: ${customer.address}</p>
</c:if>

<c:if test="${empty customer}">
    <p>Customer not found.</p>
</c:if>

<a href="/customers">Back to list</a>
</body>
</html>
