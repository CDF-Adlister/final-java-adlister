<%--
  Created by IntelliJ IDEA.
  User: dcash92
  Date: 2/26/20
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login Page</title>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>

<%--<div>--%>
<%--    <form action="profile.jsp" method="POST">--%>
<%--    &lt;%&ndash;@declare id="username"&ndash;%&gt;--%>
<%--    &lt;%&ndash;@declare id="password"&ndash;%&gt;--%>
<%--    <label for="username">UserName</label>--%>
<%--    <label>--%>
<%--        <input type="text" placeholder="Enter UserName" name="username" required>--%>
<%--    </label>--%>
<%--    <br>--%>
<%--    <label for="password">PassWord</label>--%>
<%--    <label>--%>
<%--        <input type="text" placeholder="Enter PassWord" name="password" required>--%>
<%--    </label>--%>

<%--    <button type="submit">Login</button>--%>
<%--    </form>--%>
<%--</div>--%>

    <form action="login.jsp" method="POST">
        <div class="form-group">
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
        </div>


        <div class="form-group">
        <label for="password">Password</label>
        <input type="text" name="password" id="password">
        </div>

        <button type="submit" class="btn btn-default">Login</button>
    </form>

    <%
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if(user != null && user.equals("admin") && pass != null && pass.equals("password")){
            response.sendRedirect("profile.jsp?username=" + user);
        }
    %>







</body>
</html>
