<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 8:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
</head>
<body>
<%--footer--%>
<jsp:include page="/views/include/header.jsp"/>

<div class="bg-dark">
    <!-- Video Content -->
    <div class="container my-4 ">
        <div class="row">
            <!-- Video Player and Details -->
            <div class="col-lg-8 mb-4 text-light">
                <div class="border p-3">
                    <iframe width="100%" height="450"
                            src="https://www.youtube.com/embed/HZzGLqcJyf0"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            allowfullscreen></iframe>
                    <h5 class="mt-3">Video Title</h5>
                    <p class="text-light">Description</p>
                    <div class="mb-3">
                        <span><i class="fa-solid fa-eye"></i> 100 views</span>
                    </div>
                    <div class="d-flex justify-content-start">
                        <button class="btn btn-primary me-2"><i class="fa-solid fa-thumbs-up"></i> 100</button>
                        <button class="btn btn-success me-2"><i class="fa-solid fa-thumbs-down"></i>200</button>
                        <button class="btn btn-danger me-2"><i class="fa-regular fa-bookmark"></i> Favorite</button>

                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            <i class="fa-solid fa-share"></i> Chia sẻ
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content bg-dark">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Chia sẻ video đến mọi
                                            người</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <form action="YourServletURL" method="post">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <!-- <label for="friendEmail" class="form-label">Your Friend's Email</label> -->
                                                <input type="email" class="form-control" id="friendEmail"
                                                       name="friendEmail" placeholder="Nhập email người muốn gửi đến"
                                                       required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Đóng
                                            </button>
                                            <button type="submit" class="btn btn-primary">Gửi</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Suggested Videos -->
            <div class="col-lg-4 text-light">
                <h5 class="mb-3">Related Videos</h5>
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                        <img src="https://img.youtube.com/vi/HZzGLqcJyf0/maxresdefault.jpg"
                             style="width: 150px; height: 75px;" alt="Poster" class="me-3">
                        <div>Video Title</div>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                        <img src="https://img.youtube.com/vi/HZzGLqcJyf0/maxresdefault.jpg"
                             style="width: 150px; height: 75px;" alt="Poster" class="me-3">
                        <div>Video Title</div>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                        <img src="https://img.youtube.com/vi/HZzGLqcJyf0/maxresdefault.jpg"
                             style="width: 150px; height: 75px;" alt="Poster" class="me-3">
                        <div>Video Title</div>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                        <img src="https://img.youtube.com/vi/HZzGLqcJyf0/maxresdefault.jpg"
                             style="width: 150px; height: 75px;" alt="Poster" class="me-3">
                        <div>Video Title</div>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                        <img src="https://img.youtube.com/vi/HZzGLqcJyf0/maxresdefault.jpg"
                             style="width: 150px; height: 75px;" alt="Poster" class="me-3">
                        <div>Video Title</div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container my-4">
        <div class="row">
            <div class="col-lg-8 mb-4 text-light">
                <!-- Comment Section -->
                <div class="container my-4">
                    <h5>Comments</h5>
                    <!-- New Comment Form -->
                    <form>
                        <div class="mb-3">
                            <textarea class="form-control" rows="3" placeholder="Write a comment..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Post Comment</button>
                    </form>
                    <hr>
                    <!-- Displayed Comments -->
                    <div class="comment mt-3">
                        <div class="d-flex align-items-start">
                            <img src="https://via.placeholder.com/50" alt="User Avatar" class="rounded-circle me-3">
                            <div>
                                <h6 class="mb-0">User Name</h6>
                                <small class="text-light">2 hours ago</small>
                                <p>This is a sample comment. I really enjoyed this video!</p>
                            </div>
                        </div>
                    </div>
                    <div class="comment mt-3">
                        <div class="d-flex align-items-start">
                            <img src="https://via.placeholder.com/50" alt="User Avatar" class="rounded-circle me-3">
                            <div>
                                <h6 class="mb-0">Another User</h6>
                                <small class="text-light">5 hours ago</small>
                                <p>Great video! Looking forward to more content like this.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
    </div>

    <%--footer--%>
    <jsp:include page="/views/include/footer.jsp"/>
</div>
</body>
</html>
