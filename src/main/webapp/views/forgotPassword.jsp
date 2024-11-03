<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 10/30/2024
  Time: 8:37 AM
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
    <link href="${pageContext.request.contextPath}/views/assets/css/forgotPassword.css" rel="stylesheet">
</head>
<body>

<jsp:include page="/views/include/header.jsp"/>

<div class="forgot-password-container">
    <div class="forgot-password-box">
        <h2>Quên Mật Khẩu</h2>
        <p>Vui lòng nhập email để lấy lại mật khẩu</p>
        <form action="forgotPasswordServlet" method="post">
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <button type="submit" class="forgot-btn">Gửi Yêu Cầu</button>
            <p class="back-link"><a href="login.jsp">Quay lại Đăng nhập</a></p>
        </form>
    </div>
</div>


<jsp:include page="/views/include/footer.jsp"/>
</body>
</html>
