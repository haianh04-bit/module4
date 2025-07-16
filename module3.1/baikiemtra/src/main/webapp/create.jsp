<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form method="post" action="room" class="mt-4">
  <input type="hidden" name="action" value="create"/>
  <h3>Thêm mới phòng trọ</h3>
  <div class="mb-3">
    <label class="form-label">Tên người thuê</label>
    <input name="tenantName" class="form-control" required pattern="^[\\p{L} ]{5,50}$" title="Chỉ chữ, từ 5 đến 50 ký tự" />
  </div>
  <div class="mb-3">
    <label class="form-label">Số điện thoại</label>
    <input name="phoneNumber" class="form-control" required pattern="\d{10}" title="10 chữ số" />
  </div>
  <div class="mb-3">
    <label class="form-label">Ngày bắt đầu thuê</label>
    <input name="startDate" type="date" class="form-control" required min="<%= java.time.LocalDate.now() %>"/>
  </div>
  <div class="mb-3">
    <label class="form-label">Hình thức thanh toán</label>
    <select name="paymentMethodId" class="form-select" required>
      <c:forEach var="method" items="${paymentMethods}">
        <option value="${method.id}">${method.methodName}</option>
      </c:forEach>
    </select>
  </div>
  <div class="mb-3">
    <label class="form-label">Ghi chú</label>
    <textarea name="note" class="form-control" maxlength="200"></textarea>
  </div>
  <button type="submit" class="btn btn-success">Tạo mới</button>
  <a href="room" class="btn btn-secondary">Hủy</a>
</form>
