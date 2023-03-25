<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit author</title>
</head>
<body>
<style>
    .error {
        color:red;
    }
</style>
<h3>Edit author</h3>
<form:form method="post" modelAttribute="author">
    <div><form:hidden path="id" value="${author.id}"/></div>
    <div>First Name: <form:input path="firstName"/><form:errors path="firstName" cssClass="error"/></div>
    <div>Last Name: <form:input path="lastName"/><form:errors path="lastName" cssClass="error"/></div>
    <div>PESEL: <form:input path="pesel"/><form:errors path="pesel" cssClass="error"/></div>
    <div>Email: <form:input type="email" path="email"/><form:errors path="email" cssClass="error"/></div>
    <input type="submit" value="Save author">
</form:form>
</body>
</html>