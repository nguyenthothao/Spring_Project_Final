<%-- 
    Document   : cart
    Created on : Jul 4, 2020, 5:18:57 PM
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
                <div class="single-slider slider-height2 d-flex align-items-center" style="min-height: 200px">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="hero-cap text-center">
                                    <h2>Cart List</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--================Cart Area =================-->
            <section class="cart_area section_padding">
                <div class="container">
                    <div class="cart_inner">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Product</th>
                                        <th scope="col">Discount</th>
                                        <th scope="col">Price</th>
                                        
                                        <!--                                        <th scope="col">Color</th>
                                                                                <th scope="col">Case Diameter</th>-->
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total</th>
                                        <th scope="col">Button</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                    <c:forEach var="item" items="${sessionCart}">
                                        <c:set var="total"
                                               value="${total + item.productEntity.price*item.quantity}"></c:set>
                                            <tr>
                                                <td>
                                                    <div class="media">
                                                        <div class="d-flex">
                                                            <img src="<c:url value="${item.productEntity.urlImg}"/>" alt="" />
                                                    </div>
                                                    <div class="media-body">
                                                        <p>${item.productEntity.name}</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>${item.discout}%</td>
                                            <td>
                                                <h4>$${item.productEntity.price}</h4>
                                            </td>
                                            
                                            <!--                                            <td>
                                                                                            <div class="product_count_area">
                                                                                                <select class="country_select" name="color" id="color" >
                                                                                                    <option value="1" selected>Brown</option>
                                                                                                    <option value="2">Black</option>
                                                                                                    <option value="3">Silver</option>
                                                                                                </select>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td>
                                                                                            <div class="product_count_area">
                                                                                                <select class="country_select" name="sizeWatch" id="sizeWatch" >
                                                                                                    <option value="1" selected>20mm</option>
                                                                                                    <option value="2">30mm</option>
                                                                                                    <option value="3">38mm</option>
                                                                                                    <option value="4">40mm</option>
                                                                                                </select>
                                                                                            </div>
                                                                                        </td>-->
                                            <form method="post" action="${pageContext.request.contextPath}/update/${item.productEntity.id}">
                                            <td>
                                                <div class="product_count">
                                                    <span class="input-number-decrement"> <i class="ti-minus"></i></span>
                                                    <input class="input-number" type="text" value="${item.quantity}" name="quantity" min="0" max="10">
                                                    <span class="input-number-increment"> <i class="ti-plus"></i></span>
                                                </div>
                                            </td>
                                            <td>
                                                <h4>$${item.productEntity.price*item.quantity}</h4>
                                            </td>
                                            <td>
                                                <div>
                                                    <a class="btn" href="<c:url value="/delete/${item.productEntity.id}"/>"><i class="fa fa-trash"></i></a>
                                                </div>
                                                <br>
                                                <div>
                                                        <button type="submit"><i class="fa fa-edit"></i></button>
                                                </div>
                                            </td>
                                            </form>
                                        </tr>
                                    </c:forEach>   
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <h4>Subtotal:</h4>
                                        </td>
                                        <td>
                                            <h4>$${total}</h4>
                                        </td>
                                    </tr>
                                    <tr class="bottom_button">
                                        <td>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <div class="checkout_btn_inner float-right">
                                                <a class="btn_1" href="<c:url value="/shop"/>">Continue Shopping</a>
                                            </div>
                                        </td>

                                        <td>
                                            <div class="checkout_btn_inner float-right">
                                                <a class="btn_1" href="<c:url value="/checkout"/>">CheckOut</a>
                                            </div>
                                        </td>
                                    </tr>
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
            </section>
            <!--================End Cart Area =================-->
        </main>>  
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
