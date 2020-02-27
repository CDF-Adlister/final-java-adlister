<%--
  Created by IntelliJ IDEA.
  User: dcash92
  Date: 2/26/20
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile Page</title>
</head>
<body>
<div>
<%@ include file="partials/navbar.jsp"%>
</div>
<h1>Hello Admin</h1>
<p>
    user = ${user}
</p>
<%--<div>--%>
<%--<%--%>
<%--    String user = request.getParameter("username");--%>
<%--    String pass = request.getParameter("password");--%>
<%--    if(user.equals("admin") && pass.equals("password")){--%>
<%--        response.getWriter().println("<h1> Hello Admin!</h>");--%>
<%--    }else{--%>
<%--        RequestDispatcher req = request.getRequestDispatcher("login.jsp");--%>
<%--        req.include(request, response);--%>
<%--    }--%>
<%--%>--%>
<%--</div>--%>

</body>
</html>
