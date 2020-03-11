<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />



    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

        <c:forEach var="ad" items="${profile_ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
<%--                <a href="${pageContext.request.contextPath}/ads/update?id=${ad.id}">See more Information</a>--%>
            </div>

        <form action="${pageContext.request.contextPath}/ads/update" method="get">
            <button name="selectedUpdateAd" value="${ad.id}">Update Ad</button>
        </form>
        </c:forEach>



</body>
</html>
