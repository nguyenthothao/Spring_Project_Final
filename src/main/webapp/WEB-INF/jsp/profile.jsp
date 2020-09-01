<%-- 
    Document   : about
    Created on : Jul 7, 2020, 6:44:29 PM
    Author     : This PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Watch shop | Checkout</title>
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
            <!-- Hero Area Start-->
            <div class="slider-area ">
                <div class="single-slider slider-height2 d-flex align-items-center" style="min-height: 200px">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Profile</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a href="<c:url value="/shop" />" style="margin-left: 10px; color: blue">Shopping</a>
            <a href="<c:url value="/logout" />" style="margin-left: 10px; color: red">Logout</a>
            
            <!-- Shop Method End-->
        </main>
        <footer>
            <jsp:include page="include/footer.jsp"/>
        </footer>
        <!--? Search model Begin -->
<!--        <div class="search-model-box">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-btn">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Searching key.....">
                </form>
            </div>
        </div>-->

        <jsp:include page="include/js.jsp"/>
    </body>
</html>
