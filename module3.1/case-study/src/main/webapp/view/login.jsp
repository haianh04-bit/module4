<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/07/2025
  Time: 4:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<h2>Đăng nhập</h2>
<form action="login" method="post">
  <lable>Tài khoản: <input type="text" name="username" required placeholder="username"></lable><br><br>
  <lable>Mật khẩu: <input type="text" name="password" required placeholder="password"></lable><br><br>
  <button type="submit">Đăng nhập</button>
</form>
<p>
  <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
</p>
</body>
</html>
