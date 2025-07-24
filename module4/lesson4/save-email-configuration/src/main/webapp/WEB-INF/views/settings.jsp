<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mail Configuration</title>
</head>
<body>
<h2>Mail Settings</h2>

<c:if test="${not empty message}">
    <p style="color: green">${message}</p>
</c:if>

<form:form action="/update" method="post" modelAttribute="mailConfig">
    <label>Language:</label>
    <form:select path="language" items="${languages}" /><br/>

    <label>Page Size:</label>
    <form:select path="pageSize" items="${pageSizes}" /><br/>

    <label>Spam Filter:</label>
    <form:checkbox path="spamFilter"/> Enable<br/>

    <label>Signature:</label>
    <form:input path="signature"/><br/>

    <input type="submit" value="Update Settings"/>
</form:form>
</body>
</html>
