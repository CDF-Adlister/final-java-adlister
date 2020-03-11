<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: luisrobles
  Date: 2019-04-23
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${ad.title}" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<c:if test="${ad.img_url.length() > 0}">
    <img src="${ad.img_url}" alt="picture" width="300" height="300">
</c:if>
<h1>${ad.title}</h1>
<h2>${ad.description}</h2>
<%--<h2>${ad.id}</h2>--%>
<h2>${ad.getUserId()}</h2>
<a href="${pageContext.request.contextPath}/seller?profile=${ad.getUserId()}">Contact Seller</a>
</body>
</html>
