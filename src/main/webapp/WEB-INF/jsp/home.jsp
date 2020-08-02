<%-- 
    Document   : header
    Created on : Jun 23, 2020, 1:20:09 PM
    Author     : This PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Watch shop | eCommers</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/img/favicon.ico"/>">

        <jsp:include page="include/css.jsp"/>
    </head>

    <body>
        <header>
            <jsp:include page="include/header.jsp"/>
        </header>
        <main>
            <!--? slider Area Start -->
            <div class="slider-area ">
                <div class="slider-active">
                    <!-- Single Slider -->
                    <div class="single-slider slider-height d-flex align-items-center slide-bg">
                        <div class="container">
                            <div class="row justify-content-between align-items-center">
                                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
                                    <div class="hero__caption">
                                        <h1 data-animation="fadeInLeft" data-delay=".4s" data-duration="2000ms">Select Your New Perfect Style</h1>
                                        <p data-animation="fadeInLeft" data-delay=".7s" data-duration="2000ms">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat is aute irure.</p>
                                        <!-- Hero-btn -->
                                        <div class="hero__btn" data-animation="fadeInLeft" data-delay=".8s" data-duration="2000ms">
                                            <a href="industries.html" class="btn hero-btn">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 d-none d-sm-block">
                                    <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                                        <img src="<c:url value="resources/img/hero/watch.png"/>" alt="" class=" heartbeat">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single Slider -->
                    <div class="single-slider slider-height d-flex align-items-center slide-bg">
                        <div class="container">
                            <div class="row justify-content-between align-items-center">
                                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
                                    <div class="hero__caption">
                                        <h1 data-animation="fadeInLeft" data-delay=".4s" data-duration="2000ms">Select Your New Perfect Style</h1>
                                        <p data-animation="fadeInLeft" data-delay=".7s" data-duration="2000ms">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat is aute irure.</p>
                                        <!-- Hero-btn -->
                                        <div class="hero__btn" data-animation="fadeInLeft" data-delay=".8s" data-duration="2000ms">
                                            <a href="industries.html" class="btn hero-btn">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 d-none d-sm-block">
                                    <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                                        <img src="<c:url value="resources/img/hero/watch.png"/>" alt="" class=" heartbeat">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slider Area End-->
            <!-- ? New Product Start -->
            <section class="new-product-area section-padding30">
                <div class="container popular-items">
                    <!-- Section tittle -->
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="section-tittle mb-70">
                                <h2>New Arrivals</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach var="product" items="${productD}">
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                <div class="single-new-pro mb-30 text-center single-popular-items">
                                    <div class="product-img popular-img" id="discount-border">
                                        <a href="<c:url value="/product_details/${product.productEntity.id}"/>">
                                            <img src="<c:url value="${product.productEntity.urlImg}"/>" style="height: 350px; overflow: hidden;" class="img-responsive">
                                        </a>
                                        <c:if test="${product.discount != 0}">
                                            <div class="favorit-items" id="discount-item">
                                                <span class="badge" style="color: red">
                                                    <div>
<!--                                                        <div style="z-index: 2">
                                                            <i class="fa fa-certificate fa-stack-2x" style="color: yellow"></i>
                                                        </div>-->
                                                        <div>
                                                            <fmt:formatNumber type="number" pattern="###" value="${product.discount}">
                                                            </fmt:formatNumber>%
                                                        </div>
                                                    </div>

                                                </span>
                                            </div>

                                        </c:if>
                                    </div>
                                    <div class="product-caption">
                                        <h3><a href="<c:url value="/product_details/${product.productEntity.id}"/>">${product.productEntity.name}</a></h3>
                                        <span>${product.productEntity.price} $</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            <!--  New Product End -->
            <!--? Gallery Area Start -->
            <div class="gallery-area">
                <div class="container-fluid p-0 fix">
                    <div class="row">
                        <div class="col-xl-6 col-lg-4 col-md-6 col-sm-6">
                            <div class="single-gallery mb-30">
                                <div class="gallery-img big-img" style="background-image: url(resources/img/gallery/gallery1.png);"></div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                            <div class="single-gallery mb-30">
                                <div class="gallery-img big-img" style="background-image: url(resources/img/gallery/gallery2.png);"></div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-12">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-6 col-sm-6">
                                    <div class="single-gallery mb-30">
                                        <div class="gallery-img small-img" style="background-image: url(resources/img/gallery/gallery3.png);"></div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-lg-12  col-md-6 col-sm-6">
                                    <div class="single-gallery mb-30">
                                        <div class="gallery-img small-img" style="background-image: url(resources/img/gallery/gallery4.png);"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Gallery Area End -->
            <!--? Popular Items Start -->
            <div class="popular-items section-padding30">
                <div class="container">
                    <!-- Section tittle -->
                    <div class="row justify-content-center">
                        <div class="col-xl-7 col-lg-8 col-md-10">
                            <div class="section-tittle mb-70 text-center">
                                <h2>Popular Items</h2>
                                <p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach var="product" items="${productD}">
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <img src="<c:url value="${product.productEntity.urlImg}"/>" style="height: 350px; overflow: hidden;" class="img-responsive">
                                        <div class="img-cap">
                                            <a href="<c:url value="/cart_order/${product.productEntity.id}"/>">
                                                <span>Add to cart</span>
                                            </a>
                                        </div>
                                        <div class="favorit-items">
                                            <a href="<c:url value="/favorit"/>">
                                                <span class="flaticon-heart"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <h3><a href="<c:url value="/product_details"/>">${product.productEntity.name}</a></h3>
                                        <span>${product.productEntity.price} </span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- Button -->
                    <div class="row justify-content-center">
                        <div class="room-btn pt-70">
                            <a href="<c:url value="/shop"/>" class="btn view-btn1">View More Products</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Popular Items End -->
            <!--? Video Area Start -->
            <div class="video-area">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="video-wrap">
                                <div class="play-btn "><a class="popup-video" href="https://www.youtube.com/watch?v=sx-DIVOiX-4"><i class="fas fa-play"></i></a></div>
                            </div>
                        </div>
                    </div>
                    <!-- Arrow -->
                    <div class="thumb-content-box">
                        <div class="thumb-content">
                            <h3>Next Video</h3>
                            <a href="#"> <i class="flaticon-arrow"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Video Area End -->
            <!--? Watch Choice  Start-->
            <div class="watch-area section-padding30">
                <div class="container">
                    <div class="row align-items-center justify-content-between padding-130">
                        <div class="col-lg-5 col-md-6">
                            <div class="watch-details mb-40">
                                <h2>${product1.name}</h2>
                                <p>${product1.description}</p>
                                <a href="<c:url value="/product_details/${product1.id}"/>" class="btn">Show Watches</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-10">
                            <div class="choice-watch-img mb-40">
                                <img src="<c:url value="${product1.urlImg}"/>" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center justify-content-between">
                        <div class="col-lg-6 col-md-6 col-sm-10">
                            <div class="choice-watch-img mb-40">
                                <img src="<c:url value="${product2.urlImg}"/>" alt="">
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="watch-details mb-40">
                                <h2>${product2.name}</h2>
                                <p>${product2.description}</p>
                                <a href="<c:url value="/product_details/${product2.id}"/>" class="btn">Show Watches</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Watch Choice  End-->
            <!--? Shop Method Start-->
            <div class="shop-method-area">
                <div class="container">
                    <div class="method-wrapper">
                        <div class="row d-flex justify-content-between">
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="single-method mb-40">
                                    <i class="ti-package"></i>
                                    <h6>Free Shipping Method</h6>
                                    <p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="single-method mb-40">
                                    <i class="ti-unlock"></i>
                                    <h6>Secure Payment System</h6>
                                    <p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
                                </div>
                            </div> 
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="single-method mb-40">
                                    <i class="ti-reload"></i>
                                    <h6>Secure Payment System</h6>
                                    <p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Shop Method End-->
        </main>
        <footer>
            <jsp:include page="include/footer.jsp"/>
        </footer>
        <!--? Search model Begin -->
        <!--        <div class="search-model-box">
                    <div class="h-100 d-flex align-items-center justify-content-center">
                        <div class="search-close-btn">+</div>
                        <form class="search-model-form" action="${pageContext.request.contextPath}/search">
                            <input name="strSearch" id="search-input" placeholder="Searching key....."/>
                        </form>
                    </div>
                </div>-->

        <jsp:include page="include/js.jsp"/>
    </body>
</html>
