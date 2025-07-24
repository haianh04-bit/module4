<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sandwich Condiment Selector</title>
</head>
<body>
<h2>Choose Condiments</h2>

<form:form method="post" action="/save" modelAttribute="order">
    <form:checkbox path="condiments" value="Lettuce"/> Lettuce<br/>
    <form:checkbox path="condiments" value="Tomato"/> Tomato<br/>
    <form:checkbox path="condiments" value="Mustard"/> Mustard<br/>
    <form:checkbox path="condiments" value="Sprouts"/> Sprouts<br/>
    <form:checkbox path="condiments" value="Cheese"/> Cheese<br/>
    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>
