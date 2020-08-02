<%-- 
    Document   : login_page
    Created on : Jul 24, 2020, 2:04:49 PM
    Author     : This PC
--%>

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
        <link rel="shortcut icon" type="image/x-icon" href="/resources/img/favicon.ico">

        <!-- CSS here -->
        <jsp:include page="include/css.jsp"/>
    </head>
    <body>

        <header>
            <jsp:include page="include/header.jsp"/>
        </header>
        <main>
            <div class="slider-area ">
                <div class="single-slider slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Login</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero Area End-->
            <!--================login_part Area =================-->
            <section class="login_part section_padding ">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="login_part_text text-center">
                                <div class="login_part_text_iner">
                                    <h2>New to our Shop?</h2>
                                    <p>There are advances being made in science and technology
                                        everyday, and a good example of this is the</p>
                                    <a href="#" class="btn_3">Create an Account</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="login_part_form">
                                <div class="login_part_form_iner">
                                    <h3>Welcome Back ! <br>
                                        Please Sign in now</h3>
                                    <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                                        <div class="col-md-12 form-group p_star">
                                            <input type="text" class="form-control" id="name" name="name" value=""
                                                   placeholder="Username">
                                        </div>
                                        <div class="col-md-12 form-group p_star">
                                            <input type="password" class="form-control" id="password" name="password" value=""
                                                   placeholder="Password">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <div class="creat_account d-flex align-items-center">
                                                <input type="checkbox" id="f-option" name="selector">
                                                <label for="f-option">Remember me</label>
                                            </div>
                                            <button type="submit" value="submit" class="btn_3">
                                                log in
                                            </button>
                                            <a class="lost_pass" href="#">forget password?</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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

        <jsp:include page="include/js.jsp"/>
    </body>
</html>
