<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 7:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/assets/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

<%--    header--%>
<jsp:include page="include/header.jsp"/>

<div class="row bg-dark bg-opacity-90">
    <div class="col-1 d-flex justify-content-center align-items-center" style="color: white;">Quảng cáo</div>
    <div class="col-10 mt-2 rounded">
        <div id="carouselExampleIndicators" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                        class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://cdn.tuoitre.vn/thumb_w/730/471584752817336320/2024/9/22/vhvn-22-9-241-read-only-172697562894270633228.jpg"
                         class="d-block w-100" alt="..." style="width: 1400px; height: 700px;">
                </div>
                <div class="carousel-item">
                    <img src="https://cdn.tuoitre.vn/thumb_w/730/471584752817336320/2024/9/22/vhvn-22-9-241-read-only-172697562894270633228.jpg"
                         class="d-block w-100" alt="..." style="width: 1400px; height: 700px;">
                </div>
                <div class="carousel-item">
                    <img src="https://cdn.tuoitre.vn/thumb_w/730/471584752817336320/2024/9/22/vhvn-22-9-241-read-only-172697562894270633228.jpg"
                         class="d-block w-100" alt="..." style="width: 1400px; height: 700px;">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="col-1 d-flex justify-content-center align-items-center" style="color: white;">Quảng cáo</div>

    <div class="row mt-5">
        <div class="col-1"></div>
        <div class="col-10 border border-danger rounded" style="box-shadow: inset 0 0 0 8px #dc3545;">
            <div class="container my-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="text-danger">Video <span class="text-light">mới cập nhật</span></h2>
                    <a href="#" class="btn btn-danger">Xem thêm</a>
                </div>

                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <c:forEach var="videoItem" items="${applicationScope.listAllVideo}" end="3">
                        <div class="col border border-warning rounded p-2">
                            <div class="card bg-dark text-light border-0">
                                <img src="http://img.youtube.com/vi/${videoItem.poster}/maxresdefault.jpg"
                                     class="card-img-top" alt="Movie Thumbnail">
                                <div class="card-body">
                                    <h5 class="card-title text-danger">${videoItem.title}</h5>
                                    <p class="card-text">
                                        <c:choose>
                                            <c:when test="${fn:length(videoItem.description) > 50}">
                                                ${fn:substring(videoItem.description, 0, 50)} ...
                                            </c:when>
                                            <c:otherwise>
                                                ${videoItem.description}
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                    <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>${videoItem.likes}</span>
                                        <span class="ps-2"><i
                                                class="fa-regular fa-thumbs-down text-warning"></i>${videoItem.dislikes}</span>
                                        <span class="ps-2"><i
                                                class="fa-regular fa-eye text-warning"></i>${videoItem.views}</span>
                                    </div>
                                </div>
                                <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                                <a href="${pageContext.request.contextPath}/watch?v=${videoItem.link}" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="col-1"></div>
            </div>
        </div>
    </div>
</div>
    <%--footer--%>
    <jsp:include page="include/footer.jsp"/>


    <jsp:include page="/views/include/message_notice.jsp"/>
</body>
</html>
