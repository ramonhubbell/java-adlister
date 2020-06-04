<%--
  Created by IntelliJ IDEA.
  User: ramonhubbell
  Date: 6/4/20
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%--When a user visits /login.jsp, they should see a form for logging in
1. This form should have a 'username' and 'password' field.
2. This form should submit a POST request to /login.jsp
3. Inside of login.jsp write some code to check the submitted values.
4. If the username submitted is "admin", and the password is "password",
   redirect the user to the profile page; otherwise, redirect back to the login form.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>

<form method="POST" action="http://localhost:8080/login.jsp">

    <label for="username">Username</label>
    <input id="username" name="username" type="text">
    <br>

    <label for="password">Password</label>
    <input id="password" name="password" type="password">
    <br>

    <input type="submit">
</form>

<% request.setAttribute("isAdmin", true); %>
<%request.setAttribute("password");
<c:choose>
    <c:when test="${isAdmin}">
        <a href="http://localhost:8080/profile.jsp"></a>
    </c:when>
    <c:otherwise>
        <a href="http://localhost:8080/login.jsp"></a>
    </c:otherwise>
</c:choose>
</body>
</html>
