<%-- 
    Document   : order_success
    Created on : Jul 12, 2020, 6:04:48 PM
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
                <div class="single-slider slider-height2 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Confirmation</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--================ confirmation part start =================-->
            <section class="confirmation_part section_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="confirmation_tittle">
                                <span>Thank you. Your order has been received.</span>
                            </div>
                        </div>
                        <div class="col-lg-6 col-lx-4">
                            <div class="single_confirmation_details">
                                <h4>order info</h4>
                                <ul>
                                    <li>
                                        <p>order number</p><span>: 60235</span>
                                    </li>
                                    <li>
                                        <p>data</p><span>: Oct 03, 2017</span>
                                    </li>
                                    <li>
                                        <p>total</p><span>: USD 2210</span>
                                    </li>
                                    <li>
                                        <p>mayment methord</p><span>: Check payments</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-lx-4">
                            <div class="single_confirmation_details">
                                <h4>Billing Address</h4>
                                <ul>
                                    <li>
                                        <p>Street</p><span>: 56/8</span>
                                    </li>
                                    <li>
                                        <p>city</p><span>: Los Angeles</span>
                                    </li>
                                    <li>
                                        <p>country</p><span>: United States</span>
                                    </li>
                                    <li>
                                        <p>postcode</p><span>: 36952</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-lx-4">
                            <div class="single_confirmation_details">
                                <h4>shipping Address</h4>
                                <ul>
                                    <li>
                                        <p>Street</p><span>: 56/8</span>
                                    </li>
                                    <li>
                                        <p>city</p><span>: Los Angeles</span>
                                    </li>
                                    <li>
                                        <p>country</p><span>: United States</span>
                                    </li>
                                    <li>
                                        <p>postcode</p><span>: 36952</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="order_details_iner">
                                <h3>Order Details</h3>
                                <table class="table table-borderless">
                                    <thead>
                                        <tr>
                                            <th scope="col" colspan="2">Product</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th colspan="2"><span>Pixelstore fresh Blackberry</span></th>
                                            <th>x02</th>
                                            <th> <span>$720.00</span></th>
                                        </tr>
                                        <tr>
                                            <th colspan="2"><span>Pixelstore fresh Blackberry</span></th>
                                            <th>x02</th>
                                            <th> <span>$720.00</span></th>
                                        </tr>
                                        <tr>
                                            <th colspan="2"><span>Pixelstore fresh Blackberry</span></th>
                                            <th>x02</th>
                                            <th> <span>$720.00</span></th>
                                        </tr>
                                        <tr>
                                            <th colspan="3">Subtotal</th>
                                            <th> <span>$2160.00</span></th>
                                        </tr>
                                        <tr>
                                            <th colspan="3">shipping</th>
                                            <th><span>flat rate: $50.00</span></th>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th scope="col" colspan="3">Quantity</th>
                                            <th scope="col">Total</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--================ confirmation part end =================-->
        </main>
        <footer>
            <jsp:include page="include/footer.jsp"/>
        </footer>
        <!--? Search model Begin -->
        <div class="search-model-box">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-btn">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Searching key.....">
                </form>
            </div>
        </div>

        <jsp:include page="include/js.jsp"/>
    </body>
</html>
