<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/16/2024
  Time: 8:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h5>
    <c:if test="${not empty message}">
        <script>
            Swal.fire({
                icon: '${type}',
                title: '${type}',
                text: '${message}',
                showConfirmButton: false,
                timer: 1000
            });
        </script>
        <c:remove var="message" scope="request" />
        <c:remove var="type" scope="request" />
    </c:if>
</h5>

</body>
</html>
