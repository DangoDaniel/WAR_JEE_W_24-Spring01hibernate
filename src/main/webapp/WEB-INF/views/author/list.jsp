<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All author</title>
</head>
<body>

<table>
    <tr>
        <th>Lp.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>PESEL</th>
        <th>email</th>
    </tr>
    <c:forEach items="${authors}" var="author">
        <tr>
            <td>${author.id}</td>
            <td>${author.firstName}</td>
            <td>${author.lastName}</td>
            <td>${author.pesel}</td>
            <td>${author.email}</td>

            <td><a href="edit?id=${author.id}">Edit</a></td>
            <td><a href="remove?id=${author.id}" onclick="return confirm('Are you sure?')">Remove</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
