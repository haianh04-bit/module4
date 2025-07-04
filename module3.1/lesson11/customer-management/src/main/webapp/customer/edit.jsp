<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/07/2025
  Time: 9:33 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h1>Edit Customer</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span style="color: green;">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="customers">Back to customer list</a>
</p>
<form method="post">
    <input type="hidden" name="id" value="${customer.id}" />
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}" required/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" id="email" value="${requestScope["customer"].getEmail()}" required/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}" required/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Customer"/></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
