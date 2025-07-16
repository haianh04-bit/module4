<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Từ điển đơn giản</title>
</head>
<body>
<h2>Từ điển Anh-Việt</h2>
<form action="dictionary" method="post">
    <input type="text" name="word" placeholder="Nhập từ cần tìm">
    <button type="submit" name="tìm kiếm">Tra cứu</button>
</form>
<c:if test="${not empty result}">
    <p><Strong>${word}</Strong> nghĩa là : <strong>${result}</strong></p>
</c:if>
<c:if test="${word != null && result == null}">
    <p>Không tìm thấy từ "<Strong>${word}</Strong>" trong từ điển.</p>
</c:if>
</body>
</html>