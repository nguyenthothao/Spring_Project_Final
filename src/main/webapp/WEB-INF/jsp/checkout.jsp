<%-- 
    Document   : checkout
    Created on : Jul 7, 2020, 6:31:48 PM
    Author     : This PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
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
                                    <h2>Checkout</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--================Checkout Area =================-->
            <section class="checkout_area section_padding">
                <div class="container">
                    <div class="returning_customer">
                        <div class="check_title">
                            <h2>
                                Returning Customer?
                                <a href="<c:url value="/login"/>">Click here to login</a>
                            </h2>
                        </div>
                        <div class="billing_details">
                            <mvc:form method="POST" modelAttribute="order" action="${pageContext.request.contextPath}/result">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h3>Billing Details</h3>

                                        <div class="col-md-12 form-group p_star">
                                            <input type="text" class="form-control" placeholder="First name" name="firstName" id="firstName" value="${order.firstName}"/>
                                        </div>
                                        <div class="col-md-12 form-group p_star">
                                            <input type="text" class="form-control" name="lastName" id="lastName" value="${order.lastName}" placeholder="Last name" required/>
                                        </div>
                                        <div class="col-md-12 form-group p_star">
                                            <input type="email" class="form-control" placeholder="Your email" name="email" id="email" value="${order.email}" required/>
                                        </div>
                                        <div class="col-md-12 form-group p_star">
                                            <input type="date" class="form-control" name="birthDate" id="birthDate" value="${order.birthDate}" required/>
                                        </div>
                                        <div class="col-md-3 form-group p_star">
                                            <h6>Gender&nbsp;:</h6>
                                        </div>
                                        <div class="col-md-3 form-group p_star">
                                            <select class="country_select" name="gender" id="gender" >
                                                <option value="Male" selected>Male</option>
                                                <option value="Female" >Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                        <div class="col-md-12 form-group p_star">
                                            <input type="text" class="form-control" placeholder="Your address" name="address" id="address" value="${order.address}" required/>
                                        </div>
                                        <div class="col-md-6 form-group p_star">
                                            <input type="text" class="form-control" placeholder="Phone number" name="phoneNumber" id="phoneNumber" value="${order.phoneNumber}" required/>
                                        </div>
                                        <div class="col-md-6 form-group p_star">
                                            <input type="text" class="form-control" name="idCard" id="idCard" value="${order.idCard}" placeholder="Your id card" />
                                        </div>



                                        <div class="col-md-12 form-group">
                                            <div class="creat_account">
                                                <h3>Shipping Details</h3>
                                                <input type="checkbox" id="f-option3" name="selector" />
                                                <label for="f-option3">Ship to a different address?</label>
                                            </div>
                                            <textarea class="form-control" name="message" id="message" rows="1"
                                                      placeholder="Order Notes"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="order_box">
                                            <h2>Your Order</h2>
                                            <ul class="list">
                                                <li>
                                                    <a>Product
                                                        <span class="last">Total</span></a>
                                                </li>
                                                <c:forEach var="item" items="${sessionCart}">
                                                    <c:set var="total"
                                                           value="${total + item.productEntity.price*item.quantity}"></c:set>
                                                    <li>
                                                        <a>${item.productEntity.name}
                                                            <span class="middle">x${item.quantity}</span>
                                                            <span class="last">$${item.quantity*item.productEntity.price}</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a>Color
                                                            <span class="last">${item.color}</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a>Case Diameter
                                                            <span class="last">${item.sizeWatch}mm</span>
                                                        </a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                            <ul class="list list_2">
                                                <li>
                                                    <a>Subtotal
                                                        <span>$${total}</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a>Shipping
                                                        <span class="last">$5.0</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a>Total
                                                        <span>$${total + 5}</span>
                                                    </a>
                                                    <input type="hidden" class="form-control" name="totalPrice" id="totalPrice" value="${total + 5}"/>
                                                </li>
                                            </ul>
                                            <div class="payment_item">
                                                <div class="radion_btn">
                                                    <input type="radio" id="f-option5" name="selector" />
                                                    <label for="f-option5">Check payments</label>
                                                    <div class="check"></div>
                                                </div>
                                                <p>
                                                    Please send a check to Store Name, Store Street, Store Town,
                                                    Store State / County, Store Postcode.
                                                </p>
                                            </div>
                                            <div class="payment_item active">
                                                <div class="radion_btn">
                                                    <input type="radio" id="f-option6" name="selector" />
                                                    <label for="f-option6">Paypal </label>
                                                    <img src="img/product/single-product/card.jpg" alt="" />
                                                    <div class="check"></div>
                                                </div>
                                                <p>
                                                    Please send a check to Store Name, Store Street, Store Town,
                                                    Store State / County, Store Postcode.
                                                </p>
                                            </div>
                                            <div class="creat_account">
                                                <input type="checkbox" id="f-option4" name="selector" />
                                                <label for="f-option4">I’ve read and accept the </label>
                                                <a href="#">terms & conditions*</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-12" >
                                        <div class="form-group" style="text-align: center">
                                            <button type="submit" class="btn btn-success">Accept to pay</button>
                                        </div>
                                    </div>
                                </div>
                            </mvc:form>
                        </div>
                    </div>
                </div>
            </section>
            <!--================End Checkout Area =================-->
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
