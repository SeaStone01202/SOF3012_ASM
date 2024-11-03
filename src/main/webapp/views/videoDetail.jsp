<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 10/30/2024
  Time: 8:48 AM
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
    <link href="${pageContext.request.contextPath}/views/assets/css/videoDetail.css" rel="stylesheet">
</head>
<body>

<jsp:include page="/views/include/header.jsp"/>

<div class="movie-details-container">
    <div class="movie-poster">
        <img src="path/to/poster.jpg" alt="Poster" />
    </div>
    <div class="movie-info">
        <h2>Movie Title</h2>
        <p><strong>Year:</strong> 2024</p>
        <p><strong>Genres:</strong> Action, Sci-Fi</p>
        <p><strong>Runtime:</strong> 1h 32m</p>
        <p><strong>Starring:</strong> Actor Names</p>
        <p class="movie-description">Movie synopsis goes here...</p>
        <button class="watch-btn" onclick="window.location.href='watchMovie.jsp'">Xem Phim</button>
    </div>
</div>

<section id="trend" class="pt-4 pb-5">
    <div class="container">
        <div class="row trend_1">
            <div class="col-md-6 col-6">
                <div class="trend_1l">
                    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Latest <span
                            class="col_red">Movies</span></h4>
                </div>
            </div>
            <div class="col-md-6 col-6">
                <div class="trend_1r text-end">
                    <h6 class="mb-0"><a class="button" href="#"> View All</a></h6>
                </div>
            </div>
        </div>
        <div class="row trend_2 mt-4">
            <div id="carouselExampleCaptions1" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="0" class="active"
                            aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions1" data-bs-slide-to="1"
                            aria-label="Slide 2" class="" aria-current="true"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="trend_2i row">
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="https://www.bhdstar.vn/wp-content/uploads/2024/09/referenceSchemeHeadOfficeallowPlaceHoldertrueheight700ldapp-13.jpg" class="w-100" alt="img25" style="max-width: 306px; max-height: 227px"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Transformer One</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/5.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Dapibus</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/6.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Ipsum</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/7.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Lorem</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="trend_2i row">
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/8.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Semper</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/9.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Dapibus</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/10.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Ipsum</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/11.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
                                        <span class="fs-1"><a class="col_red" href="#"><i
                                                class="fa fa-youtube-play"></i></a></span>
                                    </div>
                                </div>
                                <div class="trend_2ilast bg_grey p-3 clearfix">
                                    <h5><a class="col_red" href="#">Lorem</a></h5>
                                    <p class="mb-2">A father travels from Oklahoma to France to help his...</p>
                                    <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                    <p class="mb-0">1 Views</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>


<jsp:include page="/views/include/footer.jsp"/>
</body>
</html>
