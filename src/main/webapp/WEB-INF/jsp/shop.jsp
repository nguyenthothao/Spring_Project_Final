<%-- 
    Document   : shop
    Created on : Jun 23, 2020, 10:53:56 PM
    Author     : This PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">

        <!-- CSS here -->
        <jsp:include page="include/css.jsp"/>
    </head>
    <body>

        <header>
            <jsp:include page="include/header.jsp"/>
        </header>
        <main>
            <!-- Hero Area Start-->
            <div class="slider-area ">
                <div class="single-slider slider-height2 d-flex align-items-center" style="min-height: 200px">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Watch Shop</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero Area End-->
            <!-- Latest Products Start -->
            <section class="popular-items latest-padding">
                <div class="container">
                    <div class="row product-btn justify-content-between mb-40">
                        <div class="properties__button">
                            <!--Nav Button  -->
                            <nav>                                                      
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">NewestArrivals</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"> Price low to high</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"> Most populer </a>
                                </div>
                            </nav>
                            <!--End Nav Button  -->
                        </div>
                        <!-- Grid and List view -->
                        <div class="grid-list-view">
                        </div>
                        <!-- Select items -->
                        <div class="select-this">
<!--                            <form action="#">
                                <div class="select-itms">
                                    <select name="select" id="select1">
                                        <option value="">40 per page</option>
                                        <option value="">50 per page</option>
                                        <option value="">60 per page</option>
                                        <option value="">70 per page</option>
                                    </select>
                                </div>
                            </form>-->
                        </div>
                    </div>
                    <!-- Nav Card -->
                    <div class="tab-content" id="nav-tabContent">
                        <!-- card one -->
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
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
                                                <!--                                                <div class="favorit-items">
                                                                                                    <span class="flaticon-heart"></span>
                                                                                                </div>-->
                                                <c:if test="${product.discount != 0}">
                                                    <div class="favorit-items">
                                                        <!--<span class="flaticon-heart"></span>-->
                                                        <span class="badge" style="color: red">
                                                            <fmt:formatNumber type="number" pattern="###" value="${product.discount}"></fmt:formatNumber>%</span>
                                                        </div>
                                                </c:if>

                                            </div>
                                            <div class="popular-caption">
                                                <h3><a href="<c:url value="/product_details/${product.productEntity.id}"/>">${product.productEntity.name}</a></h3>
                                                <span>${product.productEntity.price}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <!-- Card two -->
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <div class="row">
                                <c:forEach var="product" items="${productHightolow}">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-popular-items mb-50 text-center">
                                            <div class="popular-img">
                                                <img src="<c:url value="${product.urlImg}"/>" style="height: 350px; overflow: hidden;" class="img-responsive">
                                                <div class="img-cap">
                                                    <a href="<c:url value="/cart_order/${product.id}"/>">
                                                        <span>Add to cart</span>
                                                    </a>
                                                </div>
                                                <div class="favorit-items">
                                                    <span class="flaticon-heart"></span>
                                                </div>
                                            </div>
                                            <div class="popular-caption">
                                                <h3><a href="<c:url value="/product_details/${product.id}"/>">${product.name}</a></h3>
                                                <span>$ ${product.price}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                        <!-- Card three -->
                        <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <div class="row">
                                <c:forEach var="product" items="${productPopular}">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                        <div class="single-popular-items mb-50 text-center">
                                            <div class="popular-img">
                                                <img src="<c:url value="${product.productEntity.urlImg}"/>" alt="">
                                                <div class="img-cap">
                                                    <a href="<c:url value="/cart_order/${product.productEntity.id}"/>">
                                                    <span>Add to cart</span>
                                                    </a>
                                                </div>
                                                <div class="favorit-items">
                                                    <span class="flaticon-heart"></span>
                                                </div>
                                            </div>
                                            <div class="popular-caption">
                                                <h3><a href="<c:url value="/product_details/${product.productEntity.id}"/>">${product.productEntity.name}</a></h3>
                                                <span>$ ${product.productEntity.price}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- End Nav Card -->
                </div>
            </section>
            <!-- Latest Products End -->
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
        <!-- Search model end -->

        <!-- JS here -->

        <jsp:include page="include/js.jsp"/>
    </body>
</html>
