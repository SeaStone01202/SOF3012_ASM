<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 8:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Change Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            background-color: #222;
        }

        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        }

        .form-label {
            color: #ccc;
        }

        .form-control {
            background-color: #333;
            color: #fff;
            border: 1px solid #555;
        }

        .form-control:focus {
            border-color: #dc3545;
            box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25);
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
<%--header--%>
<jsp:include page="/views/include/header.jsp"/>

<div class="form-container">
    <div id="liveAlertPlaceholder"></div>
    <h2 class="text-center text-danger mb-4">Thay đổi mật khẩu</h2>
    <form action="${pageContext.request.contextPath}/change_password" method="POST">
        <div class="mb-3">
            <label for="old-password" class="form-label">Mật khẩu cũ</label>
            <input type="password" class="form-control" id="old-password" name="oldPassword"
                   placeholder="Nhập mật khẩu cũ" required>
        </div>
        <div class="mb-3">
            <label for="new-password" class="form-label">Mật khẩu mới</label>
            <input type="password" class="form-control" id="new-password" name="newPassword"
                   placeholder="Nhập mật khẩu mới" required>
        </div>
        <button type="submit" class="btn btn-danger w-100" id="liveAlertBtn">Xác nhận</button>
    </form>
</div>

<%--footer--%>
<jsp:include page="/views/include/footer.jsp"/>

<h5>
    <c:if test="${not empty sessionScope.message}">
        <script>
            Swal.fire({
                icon: '${type}',
                title: '${type}',
                text: '${sessionScope.message}',
                showConfirmButton: false,
                timer: 1000
            });
            <c:remove var="message" scope="session" />
        </script>
    </c:if>
</h5>

</body>
</html>
