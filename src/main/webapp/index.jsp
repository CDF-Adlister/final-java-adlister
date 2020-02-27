<%--
  Created by IntelliJ IDEA.
  User: dcash92
  Date: 2/26/20
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%! private int counter = 0; %>
<% counter ++; %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% if(request.getParameter("reset") != null) counter = Integer.parseInt(request.getParameter("reset"));%>
<h1>The current count is <%= counter %> </h1>

</body>
</html>
