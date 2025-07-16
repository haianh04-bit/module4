<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/07/2025
  Time: 10:03 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Email Validate</h1>
<h3 style="color: red">${message}</h3>
<form action="validate" method="post">
    <input type="text" name="email" placeholder="Email">
    <input type="submit" value="Validate">
</form>
</body>
</html>
