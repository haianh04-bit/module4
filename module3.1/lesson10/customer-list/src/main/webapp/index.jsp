<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    if (request.getAttribute("customerList") == null) {
        List<Map<String, String>> list = new java.util.ArrayList<>();
        Map<String, String> cus1 = new java.util.HashMap<>();
        cus1.put("name", "Hoàng Ngọc Lan");
        cus1.put("date_of_birth", "1990-01-01");
        cus1.put("address", "Hà Nội");
        cus1.put("image", "img/img1.jpg");
        list.add(cus1);

        Map<String, String> cus2 = new java.util.HashMap<>();
        cus2.put("name", "Nguyễn Văn Nam");
        cus2.put("date_of_birth", "1992-02-02");
        cus2.put("address", "Hải Phòng");
        cus2.put("image", "img/img2.jpg");
        list.add(cus2);

        request.setAttribute("customerList", list);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer</title>
</head>
<style>
    table {
        width: 50%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    img {
        width: 50px;
        height: 50px;
    }
</style>
<body>
<table>
    <caption>Danh sách khách hàng</caption>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="cus" items="${customerList}">
        <tr>
            <td><c:out value="${cus.name}"/></td>
            <td><c:out value="${cus.date_of_birth}"/></td>
            <td><c:out value="${cus.address}"/></td>
            <td><img src="${cus.image}" alt="Ảnh"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>