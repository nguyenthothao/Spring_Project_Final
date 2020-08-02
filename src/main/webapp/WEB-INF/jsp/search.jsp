<%-- 
    Document   : search
    Created on : Jul 19, 2020, 8:30:09 AM
    Author     : This PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            <div class="slider-area ">
                <div class="single-slider slider-height2 d-flex align-items-center" style="min-height: 200px">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Searching</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="new-product-area section-padding30">
                <div class="container">
                    <!-- Section tittle -->
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="section-tittle mb-70">
                                <h2>Your watch searching:&nbsp;"${strSearch}"</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:if test="${products == null || fn: length (products) <= 0}">
                            <h3 style="color: red; padding-left: 30px">Item not found!!</h3>
                        </c:if>
                        <c:forEach var="product" items="${products}">
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                <div class="single-new-pro mb-30 text-center">
                                    <div class="product-img">
                                        <a href="<c:url value="/product_details/${product.id}"/>">
                                            <img src="<c:url value="${product.urlImg}"/>" style="height: 350px; overflow: hidden;" class="img-responsive">
                                            </div>
                                            <div class="product-caption">
                                                <h3><a href="<c:url value="/product_details/${product.id}"/>">${product.name}</a></h3>
                                                <span>${product.price} $</span>
                                            </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
            </section>
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
