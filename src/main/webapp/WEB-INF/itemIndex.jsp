<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <jsp:include page="../partials/head.jsp">--%>
    <%--        <jsp:param name="title" value="Viewing All The Ads" />--%>
    <%--    </jsp:include>--%>
</head>
<body>
<jsp:include page="/WEB-INF/itemIndex.jsp" />

<div class="container">
    <h1>Here Are all the Items!</h1>

    <c:forEach var="ad" items="${items}">
        <div class="col-md-6">
            <h2>${items.name}</h2>
            <p>${items.id}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
