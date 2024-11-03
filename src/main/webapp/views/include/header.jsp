<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 10/30/2024
  Time: 7:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section id="top">
    <div class="container">
        <div class="row top_1">
            <div class="col-md-3">
                <div class="top_1l pt-1">
                    <h3 class="mb-0"><a class="text-white" href="index.html"><i class="fa fa-video-camera col_red me-1"></i> Planet</a></h3>
                </div>
            </div>
            <div class="col-md-5">
                <div class="top_1m">
                    <div class="input-group">
                        <input type="text" class="form-control bg-black" placeholder="Tìm thứ gì đó...">
                        <span class="input-group-btn">
					<button class="btn btn text-white bg_red rounded-0 border-0" type="button">
						 Tìm kiếm</button>
				</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="header">
    <nav class="navbar navbar-expand-md navbar-light" id="navbar_sticky">
        <div class="container">
            <a class="navbar-brand text-white fw-bold" href="index.html"><i class="fa fa-video-camera col_red me-1"></i> Planet</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mb-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">Về chúng tôi</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Blog
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="blog.html">Blog</a></li>
                            <li><a class="dropdown-item border-0" href="blog_detail.html">Chi tiết Blog</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.html">Dịch vụ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="team.html">Nhóm</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Các Trang
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="about.html">About Us</a></li>
                            <li><a class="dropdown-item" href="services.html">Services</a></li>
                            <li><a class="dropdown-item" href="team.html">Team</a></li>
                            <li><a class="dropdown-item border-0" href="contact.html">Contact</a></li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contact.html">Liên hệ</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Tài khoản
                        </a>
                        <ul class="dropdown-menu drop_1" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/login.jsp">Đăng nhập</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/register.jsp">Đăng ký</a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/forgotPassword.jsp">Quên mật khẩu</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>
</body>
</html>
