<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<nav class="navbar navbar-expand-md navbar-dark bg-dark">--%>

<%--    &lt;%&ndash;    <button class="navbar-toggler" type="button" aria-label="Toggle navigation" data-toggle="collapse" data-target="#collapse_target">&ndash;%&gt;--%>
<%--    &lt;%&ndash;        <span class="navbar-toggler-icon"></span>&ndash;%&gt;--%>
<%--    &lt;%&ndash;    </button>&ndash;%&gt;--%>
<%--    <!-- Brand and toggle get grouped for better mobile display -->--%>
<%--    <div class="container-fluid collapse navbar-collapse" id="collapse_target">--%>

<%--&lt;%&ndash;        <a class="navbar-brand nav-text text-warning" href="${pageContext.request.contextPath}/index.jsp"><img src="/img/WattoNav.png">Watto's List</a>&ndash;%&gt;--%>

<%--        <ul class="navbar-nav">--%>
<%--            <li><a class="nav-link" href="${pageContext.request.contextPath}/ads">For Sale</a> </li>--%>

<%--            <c:if test= "${sessionScope.user == null}">--%>
<%--                <li><a class = "nav-link" href="${pageContext.request.contextPath}/login">Login</a></li>--%>
<%--                <li><a class = "nav-link" href="${pageContext.request.contextPath}/register">Register</a></li>--%>
<%--            </c:if>--%>

<%--            <c:if test= "${sessionScope.user != null}">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class = "nav-link" href="${pageContext.request.contextPath}/profile">View Profile</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class = "nav-link" href="${pageContext.request.contextPath}/update">Profile Settings</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class = "nav-link" href="${pageContext.request.contextPath}/ads/create">Create Ad</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <form class="form-inline my-2 my-lg-0" method="get" action="search">--%>
<%--                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="search" name="search">--%>
<%--                        <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>--%>
<%--                    </form>--%>
<%--                </li>--%>
<%--                <li><a class = "nav-link" href="${pageContext.request.contextPath}/logout">Logout</a></li>--%>
<%--            </c:if>--%>

<%--        </ul>--%>
<%--    </div>--%>

<%--</nav>--%>
<%--
  Created by IntelliJ IDEA.
  User: chaneybrown
  Date: 3/12/20
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/ads">Game Shop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Menu
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <%--                    If user is not logged in, show this dropdown--%>
                    <c:if test="${sessionScope.user == null}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
                        <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
                    </c:if>
                    <%--If user logged in--%>
                    <c:if test="${sessionScope.user != null}">

                    <a class="dropdown-item" href="${pageContext.request.contextPath}/ads/create">Create a Post</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/profile">View My Profile</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/update">Modify Account Info</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Logout</a>
                </div>
                </c:if>
            </li>
        </ul>
    </div>
    <form class="form-inline my-2 my-lg-0" method="get" action="search">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    </div>
</nav>
