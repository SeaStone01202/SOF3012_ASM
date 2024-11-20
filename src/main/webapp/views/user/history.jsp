<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 7:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Lịch sử</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="views/assets/css/style.css">
</head>
<body>
<%--footer--%>
<jsp:include page="/views/include/header.jsp"/>

<div class="row bg-dark bg-opacity-90">

    <div class="row mt-5">
        <div class="col-1"></div>
        <div class="col-10 border border-danger rounded" style="box-shadow: inset 0 0 0 8px #dc3545;">
            <div class="container my-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="text-light"><span class="text-danger">Lịch sử</span></h2>
                    <a href="#" class="btn btn-danger">Xem thêm</a>
                </div>

                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <c:forEach var="historyItem" items="${historyList}">
                        <div class="col border border-warning rounded p-2">
                            <div class="card bg-dark text-light border-0">
                                <img src="http://img.youtube.com/vi/${historyItem.video.poster}/maxresdefault.jpg"
                                     class="card-img-top" alt="Movie Thumbnail">
                                <div class="card-body">
                                    <h5 class="card-title text-danger">${historyItem.video.title}</h5>
                                    <p class="card-text">
                                        <c:choose>
                                            <c:when test="${fn:length(historyItem.video.description) > 50}">
                                                ${fn:substring(videoItem.video.description, 0, 50)} ...
                                            </c:when>
                                            <c:otherwise>
                                                ${historyItem.video.description}
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                    <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>${historyItem.video.likes}</span>
                                        <span class="ps-2"><i
                                                class="fa-regular fa-thumbs-down text-warning"></i>${historyItem.video.dislikes}</span>
                                        <span class="ps-2"><i
                                                class="fa-regular fa-eye text-warning"></i>${historyItem.video.views}</span>
                                    </div>
                                </div>
                                <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                                <a href="${pageContext.request.contextPath}/watch?v=${historyItem.video.link}" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="col-1"></div>
    </div>
</div>

<%--footer--%>
<jsp:include page="/views/include/footer.jsp"/>
</body>
</html>
