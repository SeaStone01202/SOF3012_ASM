<%--
  Created by IntelliJ IDEA.
  User: haith
  Date: 10/30/2024
  Time: 7:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section id="center" class="center_home">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"
                    class="" aria-current="true"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://www.bhdstar.vn/wp-content/uploads/2024/09/referenceSchemeHeadOfficeallowPlaceHoldertrueheight700ldapp-13.jpg" class="d-block w-100" alt="..." style="width: 1400px; height: 700px">
                <div class="carousel-caption d-md-block">
                    <h1 class="font_60"> Transformers One</h1>
                    <h6 class="mt-3">
                        Year : 2024
                        <a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block" href="#">Action</a>
                    </h6>
                    <p class="mt-3">The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.</p>
                    <p class="mb-2"><span class="col_red me-1 fw-bold">Starring:</span> Eget Nulla Semper Porta Dapibus
                        Diam Ipsum</p>
                    <p class="mb-2"><span class="col_red me-1 fw-bold">Genres:</span> Music</p>
                    <p><span class="col_red me-1 fw-bold">Runtime:</span> 1h 32m</p>
                    <h6 class="mt-4"><a class="button" href="#"><i class="fa fa-play-circle align-middle me-1"></i>
                        Watch Trailer</a></h6>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/views/assets/img/2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-md-block">
                    <h1 class="font_60"> Lorem Semper Nulla</h1>
                    <h6 class="mt-3">
	    <span class="col_red me-3">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star-half-o"></i>
		</span>
                        4.5 (Imdb) Year : 2022
                        <a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block" href="#">Action</a>
                    </h6>
                    <p class="mt-3">Four waves of increasingly deadly alien attacks have left most of Earth in ruin.
                        Cassie is on the run, desperately trying to save her younger brother.</p>
                    <p class="mb-2"><span class="col_red me-1 fw-bold">Starring:</span> Eget Nulla Semper Porta Dapibus
                        Diam Ipsum</p>
                    <p class="mb-2"><span class="col_red me-1 fw-bold">Genres:</span> Music</p>
                    <p><span class="col_red me-1 fw-bold">Runtime:</span> 1h 32m</p>
                    <h6 class="mt-4"><a class="button" href="#"><i class="fa fa-play-circle align-middle me-1"></i>
                        Watch Trailer</a></h6>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/views/assets/img/3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-md-block">
                    <h1 class="font_60"> Eget Diam Ipsum</h1>
                    <h6 class="mt-3">
	    <span class="col_red me-3">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star-half-o"></i>
		</span>
                        4.5 (Imdb) Year : 2022
                        <a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block" href="#">Action</a>
                    </h6>
                    <p class="mt-3">Four waves of increasingly deadly alien attacks have left most of Earth in ruin.
                        Cassie is on the run, desperately trying to save her younger brother.</p>
                    <p class="mb-2"><span class="col_red me-1 fw-bold">Starring:</span> Eget Nulla Semper Porta Dapibus
                        Diam Ipsum</p>
                    <p class="mb-2"><span class="col_red me-1 fw-bold">Genres:</span> Music</p>
                    <p><span class="col_red me-1 fw-bold">Runtime:</span> 1h 32m</p>
                    <h6 class="mt-4 mb-0"><a class="button" href="#"><i class="fa fa-play-circle align-middle me-1"></i>
                        Watch Trailer</a></h6>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>

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

<section id="upcome" class="pt-4 pb-5">
    <div class="container">
        <div class="row trend_1">
            <div class="col-md-6 col-6">
                <div class="trend_1l">
                    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Upcoming <span
                            class="col_red">Events</span></h4>
                </div>
            </div>
            <div class="col-md-6 col-6">
                <div class="trend_1r text-end">
                    <h6 class="mb-0"><a class="button" href="#"> View All</a></h6>
                </div>
            </div>
        </div>
        <div class="row trend_2 mt-4">
            <div id="carouselExampleCaptions2" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions2" data-bs-slide-to="0" class="active"
                            aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions2" data-bs-slide-to="1"
                            aria-label="Slide 2" class="" aria-current="true"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="trend_2i row">
                            <div class="col-md-4">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="https://www.bhdstar.vn/wp-content/uploads/2024/09/referenceSchemeHeadOfficeallowPlaceHoldertrueheight700ldapp-13.jpg" class="w-100" alt="img25" style="max-width: 416px; max-height: 227px"></a>
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
                            <div class="col-md-4">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="img/13.jpg" class="w-100" alt="img25"></a>
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
                            <div class="col-md-4">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/14.jpg" class="w-100" alt="img25"></a>
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

                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="trend_2i row">

                            <div class="col-md-4">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/15.jpg" class="w-100" alt="img25"></a>
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
                            <div class="col-md-4">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/16.jpg" class="w-100" alt="img25"></a>
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
                            <div class="col-md-4">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/17.jpg" class="w-100" alt="img25"></a>
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

<section id="popular" class="pt-4 pb-5 bg_grey">
    <div class="container">
        <div class="row trend_1">
            <div class="col-md-12">
                <div class="trend_1l">
                    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Trending <span
                            class="col_red">Events</span></h4>
                </div>
            </div>
        </div>
        <div class="row popular_1 mt-4">
            <ul class="nav nav-tabs  border-0 mb-0">
                <li class="nav-item">
                    <a href="#home" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
                        <span class="d-md-block">JUST ARRIVED</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#profile" data-bs-toggle="tab" aria-expanded="true" class="nav-link">
                        <span class="d-md-block">POPULAR EVENTS</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#settings" data-bs-toggle="tab" aria-expanded="false" class="nav-link">
                        <span class="d-md-block">TV SHOWS</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#settings_o" data-bs-toggle="tab" aria-expanded="false" class="nav-link">
                        <span class="d-md-block">FREE MOVIES</span>
                    </a>
                </li>

            </ul>
        </div>
        <div class="popular_2 row mt-4">
            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <div class="popular_2i row">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/18.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Semp Porta</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.2 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 49m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/19.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Eget Diam</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.3 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 2h 29m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popular_2i row mt-4">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/20.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Quis Sem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.4 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 59m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/21.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Ipsum Lorem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.6 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 48m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="profile">
                    <div class="popular_2i row">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/22.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Semp Porta</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.2 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 49m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/23.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Eget Diam</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.3 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 2h 29m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popular_2i row mt-4">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/24.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Quis Sem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.4 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 59m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/25.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Ipsum Lorem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.6 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 48m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="settings">
                    <div class="popular_2i row">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/26.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Semp Porta</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.2 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 49m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/27.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Eget Diam</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.3 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 2h 29m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popular_2i row mt-4">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/28.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Quis Sem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.4 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 59m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/29.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Ipsum Lorem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.6 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 48m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="settings_o">
                    <div class="popular_2i row">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/18.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Semp Porta</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.2 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 49m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/19.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Eget Diam</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.3 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 2h 29m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popular_2i row mt-4">
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/20.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Quis Sem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.4 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 59m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="popular_2i1 row">
                                <div class="col-md-4 col-4">
                                    <div class="popular_2i1lm position-relative clearfix">
                                        <div class="popular_2i1lm1 clearfix">
                                            <div class="grid">
                                                <figure class="effect-jazz mb-0">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/21.jpg" class="w-100" alt="img25"></a>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="popular_2i1lm2 position-absolute top-0 w-100 text-center clearfix">
                                            <ul>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-link col_red"></i></a></li>
                                                <li class="d-inline-block"><a href="#"><i
                                                        class="fa fa-search col_red"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-8">
                                    <div class="popular_2i1r">
                                        <h5><a class="col_red" href="#">Ipsum Lorem</a></h5>
                                        <h6>Action, Thriller</h6>
                                        <h6> Imdb 8.6 <span class="ms-2"><i class="fa fa-star col_red me-1"></i></span>
                                            Year : 2022 <span class="ms-2">Runtime: 1h 48m</span></h6>
                                        <p>Four waves of increasingly deadly alien attacks have left most of ruin.
                                            Cassie is on the run, desperately trying to save her younger brother.</p>
                                        <h6 class="mb-0"><a class="button" href="#"> More Info - Trailer</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section id="stream" class="pb-5 pt-4">
    <div class="container">
        <div class="row trend_1">
            <div class="col-md-6 col-6">
                <div class="trend_1l">
                    <h4 class="mb-0"><i class="fa fa-youtube-play align-middle col_red me-1"></i> Movie <span
                            class="col_red">Streaming Services</span></h4>
                </div>
            </div>
            <div class="col-md-6 col-6">
                <div class="trend_1r text-end">
                    <h6 class="mb-0"><a class="button" href="#"> View All</a></h6>
                </div>
            </div>
        </div>
        <div class="row trend_2 mt-4">
            <div id="carouselExampleCaptions4" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions4" data-bs-slide-to="0" class="active"
                            aria-label="Slide 1" aria-current="true"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions4" data-bs-slide-to="1"
                            aria-label="Slide 2" class=""></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="trend_2i row">
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/4.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/5.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/6.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/7.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/8.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="trend_2i row">
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/9.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/10.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/11.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/4.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="trend_2im clearfix position-relative">
                                    <div class="trend_2im1 clearfix">
                                        <div class="grid">
                                            <figure class="effect-jazz mb-0">
                                                <a href="#"><img src="${pageContext.request.contextPath}/views/assets/img/5.jpg" class="w-100" alt="img25"></a>
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="trend_2im2 clearfix  position-absolute w-100 top-0">
                                        <h5><a class="col_red" href="#">Semper</a></h5>
                                        <span class="col_red">
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		 <i class="fa fa-star"></i>
		</span>
                                        <p class="mb-0">2 Views</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>
</body>
</html>
