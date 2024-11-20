<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 8:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${videoWatching.title}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<jsp:include page="/views/include/header.jsp"/>

<div class="bg-dark mt-2">
    <!-- Video Content -->
    <div class="container">
        <div class="row">
            <!-- Video Player and Details -->
            <div class="col-lg-8 mb-4 text-light">
                <div class="border p-3">
                    <iframe width="100%" height="450"
                            src="https://www.youtube.com/embed/${videoWatching.link}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            allowfullscreen></iframe>
                    <h5 class="mt-3">${videoWatching.title}</h5>
                    <p class="text-light">${videoWatching.description}</p>
                    <div class="mb-3">
                        <span><i class="fa-solid fa-eye"></i> ${videoWatching.views} views</span>
                    </div>
                    <div class="d-flex justify-content-start">
                        <button class="btn btn-primary me-2" id="buttonLiked" onclick="updateReact('react_true')"><i class="fa-regular fa-thumbs-up"></i> ${videoWatching.likes}</button>
                        <button class="btn btn-success me-2" id="buttonDisliked" onclick="updateReact('react_false')"><i class="fa-regular fa-thumbs-down"></i> ${videoWatching.dislikes}</button>
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

            <!-- Suggested Videos -->
            <div class="col-lg-4 text-light">
                <h5 class="mb-3">Related Videos</h5>
                <div class="list-group">
                    <c:forEach var="item" items="${listSameSame}">
                        <a href="${pageContext.request.contextPath}/watch?v=${item.link}" class="list-group-item list-group-item-action d-flex align-items-center m-3">
                            <img src="https://img.youtube.com/vi/${item.poster}/maxresdefault.jpg"
                                 style="width: 150px; height: 75px;" alt="Poster" class="me-3">
                            <div>${item.title}</div>
                        </a>
                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/views/include/footer.jsp"/>

<input type="hidden" id="videoId" value="${videoWatching.link}"/>

<script>
    console.log(document.getElementById('videoId').value);
    function updateReact(reaction) {
        let str = reaction
        let parts = str.split("_"); // Chia chuỗi tại dấu gạch dưới
        let react = parts[1]; // Lấy phần thứ hai (true)

        const href = document.getElementById('videoId').value;
        console.log('URL:', `${pageContext.request.contextPath}/watch?action=react&href=` + href + `&reaction=` + react);
        axios.post(`${pageContext.request.contextPath}/watch?action=react&href=` + href + `&reaction=` + react)
            .then(function (response) {
                console.log('Response:', response.data);
                if (response.status === 200) {
                    const data = response.data;
                    if (str === 'react_true') {
                        document.getElementById('buttonLiked').innerHTML = `<i class="fa-solid fa-thumbs-up"></i> ${data.likes} `;
                    } else {
                        document.getElementById('buttonDisliked').innerHTML = `<i class="fa-solid fa-thumbs-down"></i> ${data.dislikes} `;
                    }
                }
            })
            .catch(function (error) {
                console.error('Error updating reaction:', error);
                alert('Failed to update like/dislike');
            });
    }
</script>
</body>
</html>
