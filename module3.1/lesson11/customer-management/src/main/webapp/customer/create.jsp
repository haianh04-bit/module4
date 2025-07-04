<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/07/2025
  Time: 9:24 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new customer</title>
</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span style="color: green;">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="customers">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" required/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" id="email" required/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" id="address" required/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Customer"/></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
