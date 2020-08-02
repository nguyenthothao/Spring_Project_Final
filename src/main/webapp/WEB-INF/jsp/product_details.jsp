<%-- 
    Document   : product_details
    Created on : Jun 23, 2020, 10:53:56 PM
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
            <!-- Hero Area Start-->
            <div class="slider-area ">
                <div class="single-slider slider-height2 d-flex align-items-center"  style="min-height: 200px">
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
            <!--================Single Product Area =================-->
            <div class="product_image_area">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <img src="<c:url value="${product.urlImg}"/>" alt="#" class="img-fluid">
                            <!--                <div class="product_img_slide owl-carousel">
                                                <div class="single_product_img">
                                                    <img src="<c:url value="/resources/img/gallery/gallery1.png"/>" alt="#" class="img-fluid">
                                                </div>
                                                <div class="single_product_img">
                                                    <img src="<c:url value="/resources/img/gallery/gallery01.png"/>" alt="#" class="img-fluid">
                                                </div>
                                                <div class="single_product_img">
                                                    <img src="<c:url value="/resources/img/gallery/gallery1.png"/>" alt="#" class="img-fluid">
                                                </div>
                                            </div>-->
                        </div>
                        <div class="col-lg-6">
                            <div class="single_product_text text-center">
                                <h3>${product.name}</h3>
                                <p>
                                    ${product.description}
                                </p>
                                <form method="POST" action="${pageContext.request.contextPath}/cart_quantity/${product.id}" class="form-inline">
                                    <div class="card_area">
                                        <div class="product_count_area">
                                            <p>Quantity:&emsp;</p>
                                            <div class="product_count d-inline-block form-group">
                                                <span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span>
                                                <input class="product_count_item input-number" type="text" name="soluong" value="1" min="0" max="10">
                                                <span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="product_count_area">
                                            <p>Color:&ensp;&emsp;&emsp;&emsp;&emsp;</p>
                                            <div class="form-group">
                                                <select class="country_select" name="color" id="color" >
                                                    <option value="Brown" selected>Brown</option>
                                                    <option value="Black">Black</option>
                                                    <option value="Silver">Silver</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="product_count_area">
                                            <p>Case Diameter:&nbsp;</p>
                                            <div class="form-group">
                                                <select class="country_select" name="sizeWatch" id="sizeWatch" >
                                                    <option value="20" selected>20mm</option>
                                                    <option value="30">30mm</option>
                                                    <option value="38">38mm</option>
                                                    <option value="40">40mm</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="add_to_cart">
                                            <input type="submit" value="Add to cart" class="btn btn-info" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <h1>Watches detail</h1>
                    </div>
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Name</th>
                                    <td>:&nbsp;&nbsp;${productDetail.productEntity.name}</td>
                                </tr>
                                <tr>
                                    <th>Brand</th>
                                    <td>:&nbsp;&nbsp;${productDetail.productEntity.brand.name}</td>
                                </tr>
                                <tr>
                                    <th>Color</th>
                                    <td>:&nbsp;&nbsp;${productDetail.color.color}</td>
                                </tr>
                                <tr>
                                    <th>Material</th>
                                    <td>:&nbsp;&nbsp;${productDetail.materials.name}</td>
                                </tr>
                                <tr>
                                    <th>Quantity in stock</th>
                                    <td>:&nbsp;&nbsp;${productDetail.productEntity.quantity}</td>
                                </tr>

                            </table>
                        </div>
                    </div>

                </div>
            </div>
            <!--================End Single Product Area =================-->
            <!-- subscribe part here -->
<!--            <section class="subscribe_part section_padding">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <div class="subscribe_part_content">
                                <h2>Get promotions & updates!</h2>
                                <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                                <div class="subscribe_form">
                                    <input type="email" placeholder="Enter your mail">
                                    <a type="submit" href="#" class="btn_1">Subscribe</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>-->
            <!-- subscribe part end -->
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
        <!-- Search model end -->

        <!-- JS here -->

        <jsp:include page="include/js.jsp"/>
    </body>
</html>
