<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">

    <%--    <button class="navbar-toggler" type="button" aria-label="Toggle navigation" data-toggle="collapse" data-target="#collapse_target">--%>
    <%--        <span class="navbar-toggler-icon"></span>--%>
    <%--    </button>--%>
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="container-fluid collapse navbar-collapse" id="collapse_target">

<%--        <a class="navbar-brand nav-text text-warning" href="${pageContext.request.contextPath}/index.jsp"><img src="/img/WattoNav.png">Watto's List</a>--%>

        <ul class="navbar-nav">
            <li><a class="nav-link" href="${pageContext.request.contextPath}/ads">For Sale</a> </li>

            <c:if test= "${sessionScope.user == null}">
                <li><a class = "nav-link" href="${pageContext.request.contextPath}/login">Login</a></li>
                <li><a class = "nav-link" href="${pageContext.request.contextPath}/register">Register</a></li>
            </c:if>

            <c:if test= "${sessionScope.user != null}">
                <li class="nav-item">
                    <a class = "nav-link" href="${pageContext.request.contextPath}/profile">View Profile</a>
                </li>
                <li class="nav-item">
                    <a class = "nav-link" href="${pageContext.request.contextPath}/update">Profile Settings</a>
                </li>
                <li class="nav-item">
                    <a class = "nav-link" href="${pageContext.request.contextPath}/ads/create">Create Ad</a>
                </li>
                <li>
                    <form class="form-inline my-2 my-lg-0" method="get" action="search">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="search" name="search">
                        <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </li>
                <li><a class = "nav-link" href="${pageContext.request.contextPath}/logout">Logout</a></li>
            </c:if>

        </ul>
    </div>

</nav>
