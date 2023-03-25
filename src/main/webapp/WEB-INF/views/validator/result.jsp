<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>Nazwa pola</th>
        <th>nazwa błędu</th>

    </tr>


<c:forEach items="${violations}" var="violation">
    <tr>
        <td>${violation.propertyPath}</td>
        <td>${violation.message}</td>
    </tr>
</c:forEach>

</table>

</body>
</html>
