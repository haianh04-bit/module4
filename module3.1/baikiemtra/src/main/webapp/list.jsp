<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
  <title>Quản lý thuê phòng trọ</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container py-4">
<h2>Danh sách phòng trọ</h2>

<form method="get" action="room" class="row mb-3">
  <div class="col-4">
    <input type="text" name="search" class="form-control" placeholder="Tìm kiếm theo mã, tên hoặc số điện thoại"/>
  </div>
  <div class="col">
    <button type="submit" class="btn btn-primary">Tìm</button>
  </div>
</form>

<form method="post" action="room">
  <input type="hidden" name="action" value="delete"/>
  <table class="table table-bordered">
    <thead>
    <tr>
      <th><input type="checkbox" id="selectAll"/></th>
      <th>Mã phòng</th>
      <th>Tên người thuê</th>
      <th>SĐT</th>
      <th>Ngày bắt đầu</th>
      <th>Hình thức thanh toán</th>
      <th>Ghi chú</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="room" items="${rooms}">
      <tr>
        <td><input type="checkbox" name="roomIds" value="${room.id}"/></td>
        <td>PT-${room.id}</td>
        <td>${room.tenantName}</td>
        <td>${room.phoneNumber}</td>
        <td>${room.startDateFormatted}</td>
        <td>${room.paymentMethod.methodName}</td>
        <td>${room.note}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <button type="submit" class="btn btn-danger">Xóa</button>
</form>

<jsp:include page="form.jsp"/>
<jsp:include page="confirm-delete.jsp"/>
<script>
  document.getElementById("selectAll").onclick = function () {
    const boxes = document.getElementsByName("roomIds");
    boxes.forEach(cb => cb.checked = this.checked);
  }
</script>
</body>
</html>