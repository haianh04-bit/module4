<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Chuyển đổi tiền tệ</title>
</head>
<body>
<h2>Chuyển đổi tiền tệ</h2>

<form action="convert" method="post">
    Số tiền: <input type="number" name="amount" step="0.01" required><br><br>
    Từ:
    <select name="from">
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
        <option value="VND">VND</option>
    </select>
    →
    <select name="to">
        <option value="VND">VND</option>
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
    </select>
    <br><br>
    <button type="submit">Chuyển đổi</button>
</form>

<c:if test="${not empty result}">
    <h3>Kết quả:</h3>
    <p>${amount} ${from} = ${result} ${to}</p>
    <p>Tỷ giá: 1 ${from} = ${rate} ${to}</p>
</c:if>
</body>
</html>
