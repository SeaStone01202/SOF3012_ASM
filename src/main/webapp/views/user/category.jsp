<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 11/13/2024
  Time: 7:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9e21e74715.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="views/assets/css/style.css">
</head>
<body>
<div class="row bg-dark bg-opacity-90">

    <div class="row mt-5">
        <div class="col-1"></div>
        <div class="col-10 border border-danger rounded" style="box-shadow: inset 0 0 0 8px #dc3545;">
            <div class="container my-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="text-light">Thể loại: <span class="text-danger">hành động</span></h2>
                    <a href="#" class="btn btn-danger">Xem thêm</a>
                </div>

                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Semper</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning"></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning"></i>1
                                                Views</span>
                                    <span><i class="fa-solid fa-play"></i></span>
                                </div>
                            </div>
                            <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                            <a href="detail.html" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>

                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Semper</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning"></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning"></i>1
                                                Views</span>
                                    <span><i class="fa-solid fa-play"></i></span>
                                </div>
                            </div>
                            <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                            <a href="detail.html" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>

                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Semper</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning"></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning"></i>1
                                                Views</span>
                                    <span><i class="fa-solid fa-play"></i></span>
                                </div>
                            </div>
                            <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                            <a href="detail.html" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>

                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Semper</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning"></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning"></i>1
                                                Views</span>
                                    <span><i class="fa-solid fa-play"></i></span>
                                </div>
                            </div>
                            <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                            <a href="detail.html" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>

                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Semper</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning"></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning"></i>1
                                                Views</span>
                                    <span><i class="fa-solid fa-play"></i></span>
                                </div>
                            </div>
                            <!-- Biểu tượng play ẩn đi mặc định và sẽ hiển thị khi hover vào card -->
                            <a href="detail.html" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>

                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Dapibus</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning "></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning "></i>1
                                                Views</span>
                                </div>
                                <a href="#" class="play-icon position-absolute top-50 start-50 translate-middle"
                                   style="display: none;">
                                    <span><i class="fa-regular fa-play" style="font-size: 40px;"></i></span>
                                </a>
                            </div>
                            <a href="#" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>
                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Ipsum</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning "></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning "></i>1
                                                Views</span>
                                </div>
                            </div>
                            <a href="#" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>
                    <div class="col border border-warning rounded p-2">
                        <div class="card bg-dark text-light border-0">
                            <img src="https://via.placeholder.com/270x200.png?text=270+x+200"
                                 class="card-img-top" alt="Movie Thumbnail">
                            <div class="card-body">
                                <h5 class="card-title text-danger">Lorem</h5>
                                <p class="card-text">A father travels from Oklahoma to France to help his...</p>
                                <div class="d-flex align-items-center">
                                            <span class="ps-2"><i
                                                    class="fa-regular fa-thumbs-up text-warning"></i>200</span>
                                    <span class="ps-2"><i
                                            class="fa-regular fa-thumbs-down text-warning "></i>100</span>
                                    <span class="ps-2"><i class="fa-regular fa-eye text-warning "></i>1
                                                Views</span>
                                </div>
                            </div>
                            <a href="#" class="play-icon">
                                        <span><i class="fa-solid fa-play text-danger"
                                                 style="font-size: 100px;"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</div>
</body>
</html>
