<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Ad" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Delete Ad</h1>
    <form action="/ads" method="post">
        <div class="form-group">
            <label for="title">Enter Ad Id to be Deleted</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>

        <input type="submit" class="btn btn-block btn-primary">
<%--    </form>--%>
</div>
</body>
</html>
