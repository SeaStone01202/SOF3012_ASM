<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 7:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark border-bottom border-body navbar-custom container-fluid"
     data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index"><span><i
                            class="fa-solid fa-house"></i></span> PHIMHAI</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        <span><i class="fa-solid fa-list"></i>Thể loại</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/user/category.jsp">Hành động</a></li>
                        <li><a class="dropdown-item" href="#">Hài hước</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Liên hệ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Năm phát hành</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2 rounded" type="search" placeholder="Tìm thứ gì đó ..."
                       aria-label="Search">
                <button class="btn btn-outline-danger" type="submit"><span><i
                        class="fa-solid fa-magnifying-glass"></i></span>Search
                </button>
            </form>
            <ul class="navbar-nav ms-auto pe-2">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        <c:choose>
                            <c:when test="${not empty sessionScope.currentUser}">
                                <span><i class="fa-regular fa-user"></i>Xin chào: ${sessionScope.currentUser.fullname}</span>
                            </c:when>
                            <c:otherwise>
                                <span><i class="fa-regular fa-user"></i>Tài khoản</span>
                            </c:otherwise>
                        </c:choose>
                    </a>
                    <ul class="dropdown-menu">
                        <c:choose>
                            <c:when test="${not empty sessionScope.currentUser}">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/user/change_password.jsp">Thay đổi mật khẩu</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/user/edit_profile.jsp">Cập nhật thông tin</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
                            </c:when>

                            <c:otherwise>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/register">Đăng ký</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/forgot_password">Quên mật khẩu</a></li>
                            </c:otherwise>
                        </c:choose>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
