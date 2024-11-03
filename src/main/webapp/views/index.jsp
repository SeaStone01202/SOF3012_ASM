<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 10/29/2024
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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

</head>
<body>
<%-- Header --%>
<jsp:include page="/views/include/header.jsp"/>


<%-- Center --%>
<jsp:include page="/views/include/center.jsp"/>


<%-- Footer --%>
<jsp:include page="/views/include/footer.jsp"/>


<script>
    window.onscroll = function() {myFunction()};

    var navbar_sticky = document.getElementById("navbar_sticky");
    var sticky = navbar_sticky.offsetTop;
    var navbar_height = document.querySelector('.navbar').offsetHeight;

    function myFunction() {
        if (window.pageYOffset >= sticky + navbar_height) {
            navbar_sticky.classList.add("sticky")
            document.body.style.paddingTop = navbar_height + 'px';
        } else {
            navbar_sticky.classList.remove("sticky");
            document.body.style.paddingTop = '0'
        }
    }
</script>
</body>
</html>
