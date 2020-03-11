<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<div class="container">
    <h1>Update Ad</h1>
    <form action="profile" method="post">
        <div class="form-group">
            <label for="title">Update Title</label>
            <input id="title" value="${ad.title}" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Update Description</label>
            <input id="description" value="${ad.description}" name="description" class="form-control" type="text">
        </div>
        <button type="submit" value="${ad.id}" class="btn btn-block btn-primary">Update</button>
    </form>
</div>

</body>
</html>
