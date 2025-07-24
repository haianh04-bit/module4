<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Selected Condiments</title>
</head>
<body>
<h2>You selected:</h2>
<c:if test="${empty selectedCondiments}">
    <p>No condiment selected.</p>
</c:if>
<ul>
    <c:forEach var="item" items="${selectedCondiments}">
        <li>${item}</li>
    </c:forEach>
</ul>
<a href="/">Back</a>
</body>
</html>
