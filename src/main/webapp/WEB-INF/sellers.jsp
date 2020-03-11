<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${seller.username}" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<h1>${seller.username}</h1>
<h2>${seller.email}</h2>
<a href="all?seller=${seller.id}">View all Ad's from this seller</a>

</body>
</html>
