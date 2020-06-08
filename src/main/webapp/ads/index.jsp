<%--
  Created by IntelliJ IDEA.
  User: ramonhubbell
  Date: 6/8/20
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp"/>
<div class="container">
    <h1>Here are all the ads!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md -6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
