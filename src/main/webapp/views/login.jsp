<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 10/30/2024
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Planet</title>
    <link href="${pageContext.request.contextPath}/views/assets/css/bootstrap.min.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/views/assets/css/font-awesome.min.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/views/assets/css/global.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/views/assets/css/index.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/views/assets/js/bootstrap.bundle.min.js"></script>
    <link href="${pageContext.request.contextPath}/views/assets/css/login.css" rel="stylesheet">
</head>
<body>

<jsp:include page="/views/include/header.jsp"/>

<div class="login-container">
    <div class="login-box">
        <h2>Đăng Nhập</h2>
        <form action="loginServlet" method="post">
            <div class="input-group">
                <label for="username">Tên tài khoản</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="login-btn">Đăng Nhập</button>
            <p class="signup-link">Chưa có tài khoản? <a href="signup.jsp">Đăng ký ngay</a></p>
        </form>
    </div>
</div>

<jsp:include page="/views/include/footer.jsp"/>
</body>
</html>
