<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add author</title>
    <style>
        .error{
            color:red;
        }
    </style>
</head>
<body>

<h3>Add author</h3>

<form:form method="post" modelAttribute="author">
    <div>First Name: <form:input path="firstName"/><form:errors path="firstName" cssClass="error"/></div>
    <div> Last Name: <form:input path="lastName"/><form:errors path="lastName" cssClass="error"/></div>
    <div> PESEL: <form:input path="pesel" type="number"/><form:errors path="pesel" cssClass="error"/></div>
    <div> email: <form:input path="email"/><form:errors path="email" cssClass="error"/></div>
    <input type="submit" value="Add author">
</form:form>

</body>
</html>
