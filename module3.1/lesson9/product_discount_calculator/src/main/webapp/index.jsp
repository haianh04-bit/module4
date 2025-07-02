<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="display-discount" method="post">
    <label>Product Description: </label><br>
    <input type="text" name="description" required><br><br>
    <label>List Price: </label><br>
    <input type="number" name="price" step="0.01" required><br><br>
    <label>Discount Percent: </label><br>
    <input type="number" name="percent" step="0.01" required><br><br>
    <input type="submit" value="Calculate Discount">
</form>
</body>
</html>