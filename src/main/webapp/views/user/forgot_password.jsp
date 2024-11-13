<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 8:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
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
<!-- Form Quên mật khẩu -->
<div class="form-container">
    <h2 class="text-center text-danger mb-4">Quên mật khẩu</h2>
    <form>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Nhập email của bạn" required>
        </div>
        <button type="submit" class="btn btn-danger w-100">Gửi yêu cầu</button>
        <p class="mt-3 text-center"><a href="${pageContext.request.contextPath}/views/user/login.jsp" class="text-decoration-none text-danger">Trở lại trang đăng
            nhập</a></p>
    </form>
</div>
</body>
</html>
